require 'json'

def lambda_handler(event:, context:)
  # DO STUFF
  { statusCode: 200, body: JSON.generate("Success") }
end
