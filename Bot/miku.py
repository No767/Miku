import logging
import os
from pathlib import Path

import discord
from discord.ext import commands
from dotenv import load_dotenv

# Grabs the bot's token from the .env file
load_dotenv()
Discord_Bot_Token = os.getenv("Miku_Dev_Token")
intents = discord.Intents.default()
intents.message_content = True
bot = commands.Bot(intents=intents, help_command=None)

logging.basicConfig(
    level=logging.INFO,
    format="[%(levelname)s] | %(asctime)s >> %(message)s",
    datefmt="[%m/%d/%Y] [%I:%M:%S %p %Z]",
)

# Loads in all extensions
path = Path(__file__).parents[0]
cogsList = os.listdir(os.path.join(path, "Cogs"))
for items in cogsList:
    if items.endswith(".py"):
        bot.load_extension(f"Cogs.{items[:-3]}", store=False)

# Adds in the bot presence
@bot.event
async def on_ready():
    logging.info("Miku is fully ready!")
    await bot.change_presence(
        activity=discord.Activity(type=discord.ActivityType.watching, name="/help")
    )


# Run the bot
bot.run(Discord_Bot_Token)
