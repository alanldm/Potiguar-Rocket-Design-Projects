//Bibliotecas  
#include <Wire.h>
#include <Adafruit_BMP085.h>
#include <EEPROM.h>

//============================================================================================* Classe AT24C256 *==========================================================================================
// Classe importada para o tratamento do armazenamento na memória EEPROM.
class EE24CXXX {
  private:
    byte _device_address;
  public:
    EE24CXXX(byte device_address) {
      _device_address = device_address;
    }
    void write(unsigned int eeaddress, unsigned char * data, unsigned int data_len);
    template <class T> int write(unsigned int eeaddress, const T& value);
};

void EE24CXXX::write(unsigned int eeaddress, unsigned char * data, unsigned int data_len) {
  unsigned int  address;
  unsigned int  page_space;
  unsigned int  page = 0;
  unsigned int  num_writes;
  unsigned char first_write_size;
  unsigned char last_write_size;
  unsigned char write_size;

  page_space = int(((eeaddress / 64) + 1) * 64) - eeaddress; 

  if (page_space > 16) {                                   
    first_write_size = page_space - ((page_space / 16) * 16);
    if (first_write_size == 0) {
      first_write_size = 16;
    }
  } else {
    first_write_size = page_space;
  }
  if (data_len > first_write_size)  {
    last_write_size = (data_len - first_write_size) % 16;   
  }
  num_writes = (data_len > first_write_size) ? ((data_len - first_write_size) / 16) + 2 : 1;   

  unsigned char i = 0, counter = 0;
  address = eeaddress;
  for (page = 0; page < num_writes; page++)  {
    if (page == 0) {
      write_size = first_write_size;
    } else if (page == (num_writes - 1)) {
      write_size = last_write_size;
    } else {
      write_size = 16;
    }

    Wire.beginTransmission(_device_address);
    Wire.write((int)((address) >> 8));   
    Wire.write((int)((address) & 0xFF)); 
    counter = 0;
    do {
      Wire.write((byte) data[i++]);
      counter++;
    } while (counter < write_size);
    Wire.endTransmission();
    address += write_size;   

    delay(5); 
  }
}

template <class T> int EE24CXXX::write(unsigned int eeaddress, const T& value) {
  const byte* p = (const byte*)(const void*)&value;
  unsigned char data[sizeof(value) + 1];
  for (int i = 0; i < sizeof(value); i++) {
    data[i] = *p++;
  }
  data[sizeof(value)] = '\n';
  write(eeaddress, data, sizeof(value));
  return sizeof(value);
}

//=====================================================================================* FIM DA CLASSE *=======================================================================================

Adafruit_BMP085 sensor_bmp;

int led = 4;
int posicao = 0;
boolean chave = false;
unsigned int last_address = 0;
unsigned long t = 0;

EE24CXXX memory(0x50);

void setup() {
  EEPROM.get(0,last_address);
  pinMode(led, OUTPUT);
  while (!chave) {
    if (!sensor_bmp.begin()) {
      chave = false;
      digitalWrite(led, HIGH);
      delay(500);
      digitalWrite(led, LOW);
      delay(500);
    } else {
      chave = true;
    }
  }
}
//Loop de armazenamento, salvando dados de 4 em 4 bytes. Dados de Temperatura e Pressão.
void loop() {
  t = millis();
  memory.write(last_address, t);
  last_address+=4;
  EEPROM.put(0,last_address);
  
  memory.write(last_address, sensor_bmp.readTemperature());
  last_address+=4;
  EEPROM.put(0,last_address);
  
  memory.write(last_address, sensor_bmp.readPressure());
  last_address+=4;
  EEPROM.put(0,last_address); 
}
