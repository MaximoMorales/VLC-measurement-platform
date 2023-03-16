#include <NewPing.h>
#include <TimeLib.h>
#include <BH1750.h>
#include <Wire.h>

// Pin que actua como un ADC
int analogPin = A3; // Photodiode output (Thorlabas 100A)
// Input variables                    
int val = 0;  // Read varialbe
int distancia = 0; // cm
int angRadiacion = 30; // Irrandiance angle
int angIncidencia = 30; // Incidence angle
int entorno = 1; // {0 = lab, 1 = corridor with glasses, 2 = corridor without glasses, 3 = office, 4 = ...}
int personas = 1;
int lente = 0;
int alfa_foto = 0;
int G_foto = 30;

// Distance measurment
const int UltrasonicPin = 6;
const int UltrasonicEcho = 5;
const int MaxDistance = 350;
NewPing sonar(UltrasonicPin, UltrasonicEcho, MaxDistance);

// Luxes measurement
BH1750 lightMeter;

// Setup
void setup() {
  Serial.begin(9600);           //  setup serial
  // Inicializamos el bus I2C
  Wire.begin();
  // Inicializamos la medida a traves del luxometro
  lightMeter.begin();
}

void loop() {
  val = analogRead(analogPin);  // read the input pin
  distancia = sonar.ping_cm();  // distance mesasrument
  float lux = lightMeter.readLightLevel();
  Serial.print(val);
  Serial.print('\t');
  Serial.print(distancia);
  Serial.print('\t');
  Serial.print(angRadiacion);
  Serial.print('\t');
  Serial.print(angIncidencia);
  Serial.print('\t');
  Serial.print(lux);
  Serial.print('\t');
  Serial.print(personas);
  Serial.print('\t');
  Serial.print(lente);
  Serial.print('\t');
  Serial.print(alfa_foto);
  Serial.print('\t');
  Serial.print(G_foto);
  Serial.print('\t');
  if(entorno == 1){
    Serial.println("pasilloCristal");
  }


  //delay(500);
}
