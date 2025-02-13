Cpp CODE 
CopyEdit
#include <ESP8266WiFi.h>
#include <ThingSpeak.h>

const char* ssid = "Your_SSID";  
const char* password = "Your_PASSWORD";  
unsigned long channelID = YOUR_CHANNEL_ID;
const char* apiKey = "YOUR_WRITE_API_KEY";

WiFiClient client;

void setup() {
    WiFi.begin(ssid, password);
    ThingSpeak.begin(client);
}

void loop() {
    float pm2_5 = readPM25(); // Function to get PM2.5 value
    float pm10 = readPM10(); // Function to get PM10 value
    
    ThingSpeak.setField(1, pm2_5);
    ThingSpeak.setField(2, pm10);
    ThingSpeak.writeFields(channelID, apiKey);
    
    delay(60000); // Upload every 60 seconds
}
________________________________________
