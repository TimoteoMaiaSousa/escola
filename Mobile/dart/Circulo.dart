import 'dart:io';
import 'dart:async';
class Circulo{
  int ncirculo = 0;
  double raio = 0;
  Circulo(this.raio, this.ncirculo);
  void clacP(double raio){
    double p = 2*3.14*raio;
    print('Perímetro do $ncirculoº círculo:\n$p');
  }
  void calcA(double raio){
    double a = 3.14*raio*raio;
    print('Área do $ncirculoº círculo:\n$a');
  }
}
void main() async{
  print('Digite o valor do raio do 1º círculo:');
  double r1 = double.parse(stdin.readLineSync()!);
  r1.toStringAsFixed(2);
  Circulo c1 = new Circulo(r1, 1);

  await Future.delayed(Duration(seconds: 1));

  print('\nDigite o valor do raio do 2º círculo:');
  double r2 = double.parse(stdin.readLineSync()!);
  r2.toStringAsFixed(2);
  Circulo c2 = new Circulo(r2, 2);

  c1.clacP(r1);
  c1.calcA(r1);

  await Future.delayed(Duration(seconds: 1));

  c2.clacP(r2);
  c2.calcA(r2);
}