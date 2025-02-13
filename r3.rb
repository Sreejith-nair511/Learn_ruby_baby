Example: Fetching PM2.5 and PM10 Data
ruby
CopyEdit
require 'net/http'
require 'json'

# ThingSpeak API URL for reading data
url = URI.parse("https://api.thingspeak.com/channels/YOUR_CHANNEL_ID/feeds.json?api_key=YOUR_READ_API_KEY&results=5")

# Fetch data
response = Net::HTTP.get(url)
data = JSON.parse(response)

# Extract and display recent PM readings
data["feeds"].each do |feed|
  puts "Timestamp: #{feed["created_at"]}, PM2.5: #{feed["field1"]}, PM10: #{feed["field2"]}"
end
