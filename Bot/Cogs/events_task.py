import asyncio
import logging
import os
from datetime import datetime

import uvloop
from dateutil import parser
from discord.ext import commands
from dotenv import load_dotenv
from miku_events_utils import MikuEventsUtils
from rin_exceptions import NoItemsError

load_dotenv()

POSTGRES_PASSWORD = os.getenv("Postgres_Password")
POSTGRES_USER = os.getenv("Postgres_User")
POSTGRES_IP = os.getenv("Postgres_IP")
POSTGRES_PORT = os.getenv("Postgres_Port")
POSTGRES_EVENTS_DATABASE = os.getenv("Postgres_Events_Database")

EVENTS_CONNECTION_URI = f"postgresql+asyncpg://{POSTGRES_USER}:{POSTGRES_PASSWORD}@{POSTGRES_IP}:{POSTGRES_PORT}/{POSTGRES_EVENTS_DATABASE}"

logging.basicConfig(
    level=logging.INFO,
    format="[%(levelname)s] | %(asctime)s >> %(message)s",
    datefmt="[%m/%d/%Y] [%I:%M:%S %p %Z]",
)

eventUtils = MikuEventsUtils()
today = datetime.now()


class EventTaskProcess:
    def __init__(self):
        self.self = self

    async def checkEventPassed(self):
        """Checks if the event has passed, and then set the value as passed. This will happen for every 1 hour"""
        while True:
            await asyncio.sleep(3600)
            mainRes = await eventUtils.obtainEventsBool(
                event_passed=False, uri=EVENTS_CONNECTION_URI
            )
            try:
                if len(mainRes) == 0:
                    raise NoItemsError
                else:
                    for mainItems in mainRes:
                        eventDate = dict(mainItems)["event_date"]
                        eventParsedDate = parser.isoparse(eventDate)
                        if eventParsedDate < today:
                            await eventUtils.setEventPassed(
                                uuid=dict(mainItems)["event_item_uuid"],
                                event_passed=True,
                                uri=EVENTS_CONNECTION_URI,
                            )
                        elif eventParsedDate == today:
                            await eventUtils.setEventPassed(
                                uuid=dict(mainItems)["event_item_uuid"],
                                event_passed=True,
                                uri=EVENTS_CONNECTION_URI,
                            )
                        elif eventParsedDate > today:
                            continue
            except NoItemsError:
                logging.warn(
                    "No active events or actual events found within the database. Continuing to check for more"
                )
                continue

    asyncio.set_event_loop_policy(uvloop.EventLoopPolicy())


class EventTasks(commands.Cog):
    def __init__(self, bot):
        self.bot = bot

    @commands.Cog.listener()
    async def on_connect(ctx):
        mainProcesses = EventTaskProcess()
        mainProc = asyncio.create_task(
            mainProcesses.checkEventPassed(), name="CheckEventPassed"
        )
        backgroundTasks = set()
        backgroundTasks.add(mainProc)
        mainProc.add_done_callback(backgroundTasks.discard)
        logging.info("Successfully started Miku's Event Checker Task")


def setup(bot):
    bot.add_cog(EventTasks(bot))
