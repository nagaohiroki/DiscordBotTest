import discord
import os


intents = discord.Intents.default()
client = discord.Client(intents=intents)


@client.event
async def on_ready():
    print('tester bot login')


@client.event
async def on_message(message):
    if message.author.bot:
        print('bot echo')
        return
    await message.channel.send('test')


client.run(os.environ['TESTER_BOT_TOKEN'])
