#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>


const char *ssid = "Malow";
const char *password = "Malowedu451637";

ESP8266WebServer server(80);

void handleRoot() {
  server.send(200, "text/html", "<h1>Hello from ESP8266!</h1>");
}

void handleHtml() {
  String path = server.uri();
  if (path.endsWith("/")) path += "index.html";

  if (SPIFFS.exists(path)) {
    File file = SPIFFS.open(path, "r");
    String htmlContent = file.readString();
    server.send(200, "text/html", htmlContent);
    file.close();
  } else {
    server.send(404, "text/plain", "File Not Found");
  }
}

void setup() {
  Serial.begin(115200);

  // Conectar-se à rede Wi-Fi
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(250);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("Conectado ao WiFi");

  // Configurar o sistema de arquivos SPIFFS
  if (!SPIFFS.begin()) {
    Serial.println("Falha ao montar sistema de arquivos SPIFFS");
    return;
  }

  // Configurar rotas
  server.on("/", HTTP_GET, handleRoot);
  server.on("/html", HTTP_GET, handleHtml);  // Nova rota para servir apenas o HTML
  server.onNotFound([]() {
    server.send(404, "text/plain", "File Not Found");
  });

  // Iniciar servidor
  server.begin();
  Serial.println("Servidor iniciado");
}

void loop() {
  server.handleClient();
}