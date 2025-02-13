ruby
CopyEdit
require 'net/http'
require 'json'
require 'mail'

# Fetch data from ThingSpeak
url = URI.parse("https://api.thingspeak.com/channels/YOUR_CHANNEL_ID/feeds.json?api_key=YOUR_READ_API_KEY&results=1")
response = Net::HTTP.get(url)
data = JSON.parse(response)

# Get latest PM2.5 and PM10 readings
latest_entry = data["feeds"].last
pm2_5 = latest_entry["field1"].to_f
pm10 = latest_entry["field2"].to_f

# Alert threshold
pm_threshold = 50

if pm2_5 > pm_threshold || pm10 > pm_threshold
  Mail.defaults do
    delivery_method :smtp, address: "smtp.example.com", port: 587, user_name: "your_email@example.com", password: "your_password", authentication: 'plain'
  end

  Mail.deliver do
    from    'your_email@example.com'
    to      'alert_recipient@example.com'
    subject 'Air Quality Alert!'
    body    "Warning! PM2.5: #{pm2_5} µg/m³, PM10: #{pm10} µg/m³. Take necessary precautions!"
  end

  puts "Alert email sent!"
else
  puts "Air quality is safe."
end
Use Case: This can be deployed on a cloud server 