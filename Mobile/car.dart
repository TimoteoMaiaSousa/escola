import 'dart:io';
import 'dart:async';
import 'Carro.dart';
void main() async{
  print('Bem vindo a seu programa criador de carros!!!');
  await Future.delayed(Duration(seconds: 1));
  print('Qual o nome do carro?');
  String name = stdin.readLineSync() ?? '';
  print('Qual a marca do carro?');
  String brand = stdin.readLineSync() ?? '';
  print('Qual o ano do carro?');
  int year = int.parse(stdin.readLineSync() ?? '');
  print('Qual a cor do carro?');
  String color = stdin.readLineSync() ?? '';
  
  Carro c1 = new Carro(color, brand, name, year);
  c1.info(color, brand, name, year);
  print('O que o carro vai fazer: Acelerar ou frear?');
  String func = stdin.readLineSync()!;
  if(func.toLowerCase() == 'acelerar'){
    c1.acelerar();
  }else{
    c1.frear();
  }
}