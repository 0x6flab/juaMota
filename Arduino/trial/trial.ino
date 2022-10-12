#include <PubSubClient.h>
#include <WiFi.h>
#include <Wire.h>
#include <Adafruit_ADS1015.h>
#include <ArduinoJson.h>
#include "./config.h"

#define ARDUINOJSON_USE_LONG_LONG 1
#define ARDUINOJSON_USE_DOUBLE 1

float current;
const float FACTOR = 100; //At 100A of current the voltage from the sensor = 1V
const float multiplier =  0.000125; //Was 0.000125 changed it to reduce errors///nb/

// Update these with values suitable for your network.
const char* ssid = WIFI_SSID;
const char* password = WIFI_PASSWORD;
const char* mqtt_server = MQTT_SERVER; 
const char* mqtt_user = MQTT_USER;
const char* mqtt_pass= MQTT_PASS;

Adafruit_ADS1115 ads;  /* Use this for the 16-bit version */
WiFiClient espClient;
PubSubClient client(espClient);

void setup() {
    Serial.begin(115200);
    delay(1000);
    ads.setGain(GAIN_ONE);        // 1x gain   +/- 4.096V  1 bit = 2mV      0.125mV
    ads.begin();
    setup_wifi();
    client.setServer(mqtt_server, 1883);
}

void loop() {
    if (!client.connected()) {
        reconnect();
    }
    StaticJsonBuffer<300> JSONbuffer;
    JsonObject& JSONencoder = JSONbuffer.createObject();
    
    float current = getcurrent();
    JSONencoder["time"] = millis();
    JSONencoder["current"] = current;

    char JSONmessageBuffer[100];
    JSONencoder.printTo(JSONmessageBuffer, sizeof(JSONmessageBuffer));
    Serial.println(JSONmessageBuffer);

    if (client.publish("sensorData/techexpo/juaMota/firstdevice", JSONmessageBuffer) == true) {
        Serial.println("Success sending message");
    } else {
        Serial.println("Error sending message");
    }
    client.loop();
    delay(50);
    printMeasure("Irms: ", current, "A");
}

void setup_wifi() {
    WiFi.begin(ssid, password);
    while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(".");
    }
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());
}

void reconnect() {
    Serial.println("In reconnect...");
    while (!client.connected()) {
        Serial.print("Attempting MQTT connection...");
        if (client.connect("techexpo_juaMota_firstdevice", mqtt_user, mqtt_pass)) {
            Serial.println("connected");
        } else {
            Serial.print("failed, rc=");
            Serial.print(client.state());
            Serial.println(" try again in 5 seconds");
            delay(5000);
        }
    }
}

float getcurrent() {
    float voltage, current;
    float sum = 0;
    long timecheck = millis();
    int counter = 0;

    while(millis() - timecheck < 1000) {
        voltage = ads.readADC_Differential_0_1() * multiplier;// Read data from ADC pins 0 and 1
        current = voltage * FACTOR;
        sum += sq(current);
        counter = counter + 1;
    }
    current = sqrt(sum/counter);
    return current;
}

void printMeasure(String prefix, float value, String postfix) {
    Serial.print(prefix);
    Serial.print(value, 6);
    Serial.println(postfix);
}
