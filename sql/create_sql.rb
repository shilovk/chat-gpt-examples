require_relative '../init'

def create_sql(prompt)
  response = @client.completions(
    parameters: {
      "model": "text-davinci-003",
      "prompt": prompt,
      "temperature": 0.3,
      "max_tokens": 60,
      "top_p": 1.0,
      "frequency_penalty": 0.0,
      "presence_penalty": 0.0
    }
  )

  puts response['choices'][0]['text'].lstrip
end

prompt = 'Create a SQL request to find all users who live in California
          and have over 1000 credits'

create_sql(prompt)
