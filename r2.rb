CopyEdit
require 'net/http'
require 'uri'

# ThingSpeak API credentials
api_key = "YOUR_WRITE_API_KEY"
channel_id = "YOUR_CHANNEL_ID"

# Sample air quality data (these would be actual sensor readings)
pm2_5 = 35.4
pm10 = 65.2

# Construct ThingSpeak API request URL
url = URI.parse("https://api.thingspeak.com/update?api_key=#{api_key}&field1=#{pm2_5}&field2=#{pm10}")

# Send data using HTTP GET request
response = Net::HTTP.get_response(url)

# Print response from ThingSpeak
puts "Response Code: #{response.code}"
puts "Response Body: #{response.body}"
