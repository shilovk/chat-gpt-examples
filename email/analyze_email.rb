require_relative '../init'

def analyse_email(prompt)
  prompt = "Provide a sentiment analysis of the following email.
            Your response should be positive, neutral or negative.
            Email: #{prompt}"

  response = @client.completions(
    parameters: {
      model: 'text-davinci-003',
      prompt: prompt,
      temperature: 0.5,
      max_tokens: 10
    }
  )

  puts response['choices'][0]['text'].lstrip
end

prompt = 'I am happy with the service received by your team. Even though it
         was late, they provided a very high quality result which I am
         grateful for.'

analyse_email(prompt)
