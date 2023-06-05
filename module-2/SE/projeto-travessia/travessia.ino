void setup()
{
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(7, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(1, OUTPUT);
  pinMode(0, OUTPUT);
}

void loop()
{
  // liga e desliga os dois semáforos de pedestres
  digitalWrite(1, HIGH);
  digitalWrite(12, HIGH);
  delay(5000);
  digitalWrite(1, LOW);
  digitalWrite(12, LOW);
  digitalWrite(0, HIGH);
  digitalWrite(13, HIGH);
  delay(3000); // Wait for 1000 millisecond(s)
  digitalWrite(0, LOW);
  digitalWrite(13, LOW);
  
  // liga verde-semaforo-1(11) e vermelho-semaforo-2(7)
  digitalWrite(11, HIGH);
  digitalWrite(7, HIGH);
  
  delay(5000);
  
  // desliga verde-semaforo-11(11) e liga amarelo-semaforo-1(10)
  digitalWrite(11, LOW);
  digitalWrite(10, HIGH);
  
  delay(5000);
  
  // desliga amarelo-semaforo-1(10) e liga vermelho-semaforo-1(9)
  // e desliga vermelho-semaforo-2(7) e liga verde-semaforo-2(5)
  digitalWrite(10, LOW);
  digitalWrite(9, HIGH);
  digitalWrite(7, LOW);
  digitalWrite(5, HIGH);
  
  delay(7000);
  
  // desliga verde-semaforo-2(5) e liga amarelo-semaforo-2(6)
  digitalWrite(5, LOW);
  digitalWrite(6, HIGH);
  
  delay(5000);
  
  // desliga amarelo-semaforo-2(6) e liga vermelho-semaforo-2(7)
  digitalWrite(6, LOW);
  digitalWrite(7, HIGH);
  
  delay(5000);
  
  digitalWrite(7, LOW);
  digitalWrite(9, LOW);
 
  delay(3000);
}
