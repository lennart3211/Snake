#include <WiFi.h>

#include <Arduino.h>
#include <WiFi.h>
#include <AsyncTCP.h>
#include <ESPAsyncWebServer.h>
#include "SPIFFS.h"

const char * ssid = "ESP";
const char * password = "password";

AsyncWebServer server(80);
AsyncWebSocket ws("/ws");


unsigned long lastTime = 0;
unsigned long timerDelay = 30000;

void initSPIFFS() {
  if (!SPIFFS.begin(true)) {
    Serial.println("An error has occurred while mounting SPIFFS");
  }
  Serial.println("SPIFFS mounted successfully");
}

void initWiFi() {
  WiFi.softAP(ssid, password);
  delay(1000);
  Serial.println(WiFi.softAPIP());

  WiFi.setSleep(false);
}

void notifyClients(String sensorReadings) {
  ws.textAll(sensorReadings);
}

void handleWebSocketMessage(void *arg, uint8_t *data, size_t len) {
  AwsFrameInfo *info = (AwsFrameInfo*)arg;
  if (info->final && info->index == 0 && info->len == len && info->opcode == WS_TEXT) {
    notifyClients("sensorReadings");
  }
}


void onEvent(AsyncWebSocket *server, AsyncWebSocketClient *client, AwsEventType type, void *arg, uint8_t *data, size_t len) {
  switch (type) {
    case WS_EVT_CONNECT:
      Serial.printf("WebSocket client #%u connected from %s\n", client->id(), client->remoteIP().toString().c_str());
      break;
    case WS_EVT_DISCONNECT:
      Serial.printf("WebSocket client #%u disconnected\n", client->id());
      break;
    case WS_EVT_DATA:
      handleWebSocketMessage(arg, data, len);
      break;
    case WS_EVT_PONG:
    case WS_EVT_ERROR:
      break;
  }
}

void initWebSocket() {
  ws.onEvent(onEvent);
  server.addHandler(&ws);
}

void setup() {
  Serial.begin(115200);
  initWiFi();
  initSPIFFS();
  initWebSocket();


  server.serveStatic("/", SPIFFS, "/");

  // Start server
  server.begin();
}

void loop() {
  int16_t values[2];
  values[0] = analogRead(32);
  values[1] = analogRead(33);

  if (values[0] > 3500) {
    values[0] = 1;
  } else if (values[0] < 1500) {
    values[0] = -1;
  } else {
    values[0] = 0;
  }
  if (values[1] > 3500) {
    values[1] = 1;
  } else if (values[1] < 1500) {
    values[1] = -1;
  } else {
    values[1] = 0;
  }
  ws.binaryAll((uint8_t *)values, 4);
 // Serial.println(values[0]);

  delay(100);
  ws.cleanupClients();
}
