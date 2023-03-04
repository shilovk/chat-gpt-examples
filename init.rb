require 'dotenv/load'
require 'openai'

@client = OpenAI::Client.new(access_token: ENV['CHAT_GPT_API_KEY'])

