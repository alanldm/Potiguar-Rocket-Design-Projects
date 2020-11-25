#include <LiquidCrystal.h>
#include <Keypad.h>

int a=0, b=0, c=0, d=0;    //Variáveis que armazenam a contrasenha
int var=0;          //Variável auxiliar para o switch
int C1=1,C2=2,C3=3,C4=4;  //Definição da senha
const byte filas = 4;     //numero de linhas.
const byte columnas = 4;  //numero de colunas.

char tecla[filas][columnas] = {
  {'1','2','3','A'},
  {'4','5','6','B'},
  {'7','8','9','C'},
  {'*','0','#','D'}
};

byte pinFilas[filas] = {6, 7, 8, 9};        //Pinos das linhas
byte pinColumnas[columnas] = {10, 11, 12, 13};    //Pinos das colunas

Keypad keypad = Keypad( makeKeymap(tecla), pinFilas, pinColumnas, filas, columnas );

int sensorcap = A4;
int botaoliga = 5;
int pinignitar = 3;

LiquidCrystal lcd(17,16,15,14,4,2);

int mapacap=0;

void setup(){
  Serial.begin(9600);
  lcd.begin(16,2);
  
  pinMode(botaoliga, OUTPUT);
  pinMode(pinignitar, OUTPUT);
  digitalWrite(3, LOW);
  digitalWrite(0, LOW);
  
  lcd.clear();
  lcd.setCursor(2,0);
  lcd.print("PRD-Trainee!");
  lcd.setCursor(2,1);
  lcd.print("Senha:");
}

//-----------Função verificadora de senha-----------

bool senha(){
  char key = keypad.getKey();
  if (key){
   key=key-48;      //converção char em inteiros
   var++; 
   switch(var){
    case 1:
    a=key;        //armazenar o primeiro digito para a contrasenha
    Serial.print(a);
    lcd.setCursor(8,1);
  lcd.print("*");
    break;
    case 2:
    b=key;        //armazenar o segundo digito para a contrasenha
    Serial.print(b);
    lcd.setCursor(9,1);
  lcd.print("*");
    break;
    case 3:
    c=key;        //armazenar o terceiro digito para a contrasenha
    Serial.print(c);
    lcd.setCursor(10,1);
  lcd.print("*");
    break;
    case 4:
    d=key;        //armazenar o quarto digito para a contrasenha
    Serial.print(d);
    lcd.setCursor(11,1);
  lcd.print("*");
    delay(100);
     if(a==C1 && b==C2 && c==C3 && d==C4){
      lcd.clear();
      lcd.setCursor(5,0);
      lcd.print("Senha");
      lcd.setCursor(4,1);
      lcd.print("Correta");
      delay(200);
      lcds(1);
     }else{
        lcd.clear();
      lcd.setCursor(0,0);
      lcd.print("Senha Incorreta!");
      lcd.setCursor(4,1);
      lcd.print("Reinicie");
     }
   }
  }
}

//--------Fim função verificadora de senha-----------
//===================================================
//---------Função verificadora do capacitor----------

bool verify(){
  mapacap = map(analogRead(sensorcap),0,1023,0,100);
  if(mapacap>=85){
    return true;
  } else {
    return false;
  }
}

//-------Fim função verificadora do capacitor--------
//===================================================
//--------------Função contagem regressiva-----------

void contagem(){
  int cont=10;
  lcds(3);
  while(!(cont<0)){
    lcd.setCursor(2,1);
    lcd.print(String(cont)+" ");
    cont--;
    delay(1000);
  }
  lcds(4);
  digitalWrite(pinignitar, HIGH);
  delay(300);
  digitalWrite(pinignitar, LOW);
  lcds(1);
}

//------------Fim função contagem regressiva---------
//===================================================
//-------------------Função ignitar------------------

void ignitar(){
  if(a==C1 && b==C2 && c==C3 && d==C4){
    if(verify() && digitalRead(botaoliga)==1){
      lcds(2);
      contagem();
    }else{
      lcds(2);
    }
  }
}

//-----------------Fim função ignitar---------------
//==================================================
//-----------------Função sets do LCD---------------

void lcds(int type){     
  if(type==1){
    lcd.clear();
    lcd.setCursor(2,0);
    lcd.print("PRD-Trainee");
    lcd.setCursor(0,1);
    lcd.print("Cap: ");
    lcd.setCursor(10,1);
    lcd.print("IG: ");
  }else if(type==2){
    if(verify()){
      lcd.setCursor(13,1);
      lcd.print("ON ");
    }else{
      lcd.setCursor(13,1);
      lcd.print("OFF");
    }
    if(mapacap<100 && mapacap>9){
      lcd.setCursor(4,1);
      lcd.print(String(mapacap)+"% ");
    }else{
      lcd.setCursor(4,1);
      lcd.print(String(mapacap)+"%  ");
    }
  }else if(type==3){
    lcd.clear();
    lcd.setCursor(2,0);
    lcd.print("Contagem");
  }else if(type==4){
    lcd.clear();
    lcd.print("Ignicao!!"); 
  }
}

//----------------Fim função sets do LCD--------------
void loop(){
    ignitar();
    senha();
}
