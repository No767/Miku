import asyncio
import random

import aiohttp
import bs4
import discord
import orjson
import simdjson
import uvloop
from discord.commands import SlashCommandGroup
from discord.ext import commands, pages
from rin_exceptions import NotFoundHTTPException

parser = simdjson.Parser()


class WaifuCmdsV1(commands.Cog):
    def __init__(self, bot):
        self.bot = bot

    waifu = SlashCommandGroup(
        "waifu", "Commands to get a ton of waifu stuff", guild_ids=[978546162745348116]
    )
    waifuRandom = waifu.create_subgroup(
        "random", "Get a random waifu", guild_ids=[978546162745348116]
    )

    @waifuRandom.command(name="one")
    async def waifuPic(self, ctx):
        """Gets one random waifu pics"""
        waifuTagList = [
            "uniform",
            "maid",
            "waifu",
            "marin-kitagawa",
            "mori-calliope",
            "raiden-shogun",
            "selfies",
        ]
        async with aiohttp.ClientSession(json_serialize=orjson.dumps) as session:
            params = {
                "selected_tags": random.choice(waifuTagList),  # nosec B311
                "is_nsfw": "false",
                "excluded_tags": "oppai",
            }
            async with session.get("https://api.waifu.im/random/", params=params) as r:
                data = await r.content.read()
                dataMain = parser.parse(data, recursive=True)
                try:
                    if r.status in [404, 422]:
                        raise NotFoundHTTPException
                    else:
                        embed = discord.Embed()
                        for mainItem in dataMain["images"]:
                            embed.set_image(url=mainItem["url"])
                            embed.set_footer(text=mainItem["source"])
                        await ctx.respond(embed=embed)
                except NotFoundHTTPException:
                    await ctx.respond(
                        embed=discord.Embed(
                            description="It seems like there were no waifus found... Please try again"
                        )
                    )

    asyncio.set_event_loop_policy(uvloop.EventLoopPolicy())

    @waifuRandom.command(name="many")
    async def waifuRandomMany(self, ctx):
        """Returns many random waifu pics"""
        waifuTagList = [
            "uniform",
            "maid",
            "waifu",
            "marin-kitagawa",
            "mori-calliope",
            "raiden-shogun",
            "selfies",
        ]
        async with aiohttp.ClientSession(json_serialize=orjson.dumps) as session:
            params = {
                "selected_tags": random.choice(waifuTagList),  # nosec B311
                "is_nsfw": "false",
                "excluded_tags": "oppai",
                "many": "true",
            }
            async with session.get("https://api.waifu.im/random/", params=params) as r:
                data = await r.content.read()
                dataMain = parser.parse(data, recursive=True)
                try:
                    if r.status in [404, 422]:
                        raise NotFoundHTTPException
                    else:
                        mainPages = pages.Paginator(
                            pages=[
                                discord.Embed()
                                .set_footer(text=mainItem["source"])
                                .set_image(url=mainItem["url"])
                                for mainItem in dataMain["images"]
                            ]
                        )
                        await mainPages.respond(ctx.interaction, ephemeral=False)
                except NotFoundHTTPException:
                    await ctx.respond(
                        embed=discord.Embed(
                            description="It seems like there were no waifus found... Please try again"
                        )
                    )

    asyncio.set_event_loop_policy(uvloop.EventLoopPolicy())

    @waifu.command(name="info")
    async def waifuGen(self, ctx):
        """Returns some info about a random waifu"""
        async with aiohttp.ClientSession(json_serialize=orjson.dumps) as session:
            headers = {
                "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36"
            }
            async with session.get(
                "https://www.mywaifulist.moe/random", headers=headers
            ) as r:
                data = await r.text()
                soup = bs4.BeautifulSoup(data, "lxml")
                waifu_title = soup.find("meta", attrs={"property": "og:title"}).attrs[
                    "content"
                ]
                image_url = soup.find("meta", attrs={"property": "og:image"}).attrs[
                    "content"
                ]
                description = soup.find("p", id="description").get_text()
                embedVar = discord.Embed(
                    title=waifu_title, color=discord.Color.from_rgb(208, 189, 255)
                )
                embedVar.description = f"{description}"
                embedVar.set_image(url=image_url)
                await ctx.respond(embed=embedVar)

    asyncio.set_event_loop_policy(uvloop.EventLoopPolicy())


def setup(bot):
    bot.add_cog(WaifuCmdsV1(bot))
