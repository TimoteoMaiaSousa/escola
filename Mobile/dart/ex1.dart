import 'dart:io';
void main(){
  print('Programa calculador de volume de cilindro circular');
  print('Altura do cilindro:');
  double h = double.parse(stdin.readLineSync() ?? '0');
  print('Raio da base:');
  double R = double.parse(stdin.readLineSync() ?? "0");
  double pi = 3.14;
  double volume = pi*2*R*h;
  print('O volume do cilindro de altura $h, raio $R é $volume');
}