void setup() {
  Serial.begin(9600);  
}

void loop() {
  Serial.println("Metano: "+(String)FunGas()+"%");
  Serial.println("Temperatura: "+(String)FunTemp()+"*C");
  Serial.println("InclinacaoV: "+(String)FunInc1());
  Serial.println("InclinacaoH: "+(String)FunInc2());
  IniciarTrigger();
  FunUltra(CalcularDistancia());
  Serial.println("");
  delay (2000);
}

//----------------Função Sensor de Gás ----------------

int FunGas (){
  int redgas = 13;      //Pino do LED Vermelho para o sensor de gás
  int yellowgas = 12;   //Pino do LED Amarelo para o sensor de gás
  int greengas = 11;    //Pino do LED Verde para o sensor de gás
  int sensorgas = A4;   //Pino para o sensor de gás
  int mapagas = 0;      //Variável que receberá o mapeamento
  
  pinMode(redgas, OUTPUT);
  pinMode(yellowgas, OUTPUT);
  pinMode(greengas, OUTPUT);
  
  mapagas = analogRead(sensorgas);
  mapagas = map(mapagas, 306, 750, 0, 100);
  
  if (mapagas >= 80) {
    digitalWrite(redgas, HIGH);
    digitalWrite(yellowgas, LOW);
    digitalWrite(greengas, LOW);
  } else if (mapagas <= 20) {
    digitalWrite(redgas, LOW);
    digitalWrite(yellowgas, LOW);
    digitalWrite(greengas, HIGH);
  } else {
    digitalWrite(redgas, LOW);
    digitalWrite(yellowgas, HIGH);
    digitalWrite(greengas, LOW);
  }
  return mapagas;
}

//----------------Fim Função Sensor de Gás --------------
/*======================================================*/
//--------------Função Sensor de Temperatura-------------

float FunTemp(){
  int sensortemp=A5;    //Pino para o sensor de temperatura
  int greentemp=9;      //Pino do LED Verde para o sensor de temperatura
  int redtemp=10;     //Pino do LED Vermelho para o sensor de temperatura
  int cooler=8;       //Pino do Cooler para o sensor de temperatura
    
  pinMode(greentemp, OUTPUT);
  pinMode(redtemp, OUTPUT);
  pinMode(cooler, OUTPUT);
  
  int temptensao=analogRead(sensortemp); // Faz a leitura da tensão no sensor de temperatura

  float tensao=temptensao*5;      // Converte a tensão lida
  tensao/=1024;

  float tempC=(tensao-0.5)*100;     // Converte a tensão lida para Graus Celsius
  
  if (tempC>=60) {
    digitalWrite(greentemp, LOW);
    digitalWrite(redtemp, HIGH);
    digitalWrite(cooler,HIGH);
  } else {
    digitalWrite(greentemp, HIGH);
    digitalWrite(redtemp, LOW);
    digitalWrite(cooler,LOW);
  }
    return tempC;
}

//------------Fim Função Sensor de Temperatura ----------
/*======================================================*/
//----------Função Sensor de Inclinação Vertical---------

bool FunInc1(){
  int sensorinc1 = 7;   //Pino para o sensor de inclinação vertical
  int redinc = A1;      //Pino do LED Vermelho do sensor de inclinação vertical 
  int greeninc = 16;    //Pino do LED Verde do sensor de inclinação vertical
  bool mapainc1 = 0;    //Variável que receberá o mapeamento
  
  pinMode(sensorinc1, INPUT);
  pinMode(redinc, OUTPUT);
  pinMode(greeninc, OUTPUT);
  
  mapainc1 = digitalRead(sensorinc1);
  
  if(!mapainc1){
    digitalWrite(redinc, LOW);
    digitalWrite(greeninc, HIGH);
  } else {
    digitalWrite(redinc, HIGH);
    digitalWrite(greeninc, LOW);
  }
  return !mapainc1;
}

//--------Fim Função Sensor de Inclinação Vertical--------
/*=======================================================*/
//---------Função Sensor de Inclinação Horizontal---------

bool FunInc2(){
  int sensorinc2 = 2;   //Pino do sensor de inclinação horizontal
  bool mapainc2 = 0;    //Variável que receberá o mapeamento
  int sign2 = 17;
  
  pinMode(sensorinc2, INPUT);
  pinMode(sign2, OUTPUT);
  
  mapainc2 = digitalRead(sensorinc2);
  if(!mapainc2){
    digitalWrite(sign2, HIGH);
  } else {
    digitalWrite(sign2, LOW);
  }
  return !mapainc2;
}

//--------Fim Função Sensor de Inclinação Horizontal------
/*=======================================================*/
//----------------Função Sensor Ultrassônico--------------

float FunUltra(int distan){
  int greenultra = 3;   //Pino do LED Verde do sensor ultrassônico
  int redultra = 4;     //Pino do LED Vermelho do sensor ultrassônico
  
  pinMode(greenultra, OUTPUT);
  pinMode(redultra, OUTPUT);
  
  if(distan>=200){
    digitalWrite(greenultra, HIGH);
    digitalWrite(redultra, LOW);
  } else {
    digitalWrite(redultra, HIGH);
    digitalWrite(greenultra, LOW);
  }
  return distan;
}

float CalcularDistancia() {
  int ECHO = 5;       //Pino de entrada do Echo do sensor ultrassônico
  float vsom = 34300.0;   //Variável que recebe o valor da velocidade do som em cm/s
  
  pinMode(ECHO, INPUT);
  
  unsigned long tempo = pulseIn(ECHO, HIGH);
  float distancia = tempo * 0.000001 * vsom / 2.0;
  delay(500);
  Serial.print("Distancia: ");
  Serial.print(distancia);
  Serial.println("m");
  return distancia;
}

void IniciarTrigger() {
  
  int TRIGGER  = 6;       //Pino de entrada do Echo do sensor ultrassônico
  pinMode(TRIGGER, OUTPUT);
  
  digitalWrite(TRIGGER, LOW);
  delayMicroseconds(2);
  digitalWrite(TRIGGER, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIGGER, LOW);
}

//------------------Fim Sensor Ultrassônico------------------
