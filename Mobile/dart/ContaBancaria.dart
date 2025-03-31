import 'dart:io';
import 'dart:async';
class ContaBancaria{
  String numConta='';
  String nomeTitular='';
  double saldo=0;
  ContaBancaria(this.numConta, this.nomeTitular, this.saldo);
  void dados(){
    print('Dados de quem vai receber:\nNome: $nomeTitular\nConta: $numConta');
  }
  void transf(double quantia){
    dados();
    print('Saldo antes do depósito: $saldo');
    print('Valor do depósito: $quantia');
    print('Saldo após o depósito: ${saldo+=quantia}');
  }
  void saque(double quantia){
    if(quantia > 5000){
      print('Saque taxado!');
    }else{
      dados();
      print('Saldo antes do saque: $saldo');
      print('Valor do saque: $quantia');
      print('Saldo após o saque: ${(saldo-=quantia).toStringAsFixed(2)}');
    }
  }
}
void main() async{
  print('Bem vindo(a) a sua conta da T&P Bank!');
  await Future.delayed(Duration(seconds: 1));
  print('Digite o número da sua conta:');
  String nc = stdin.readLineSync()!;
  await Future.delayed(Duration(seconds: 1));
  print('Digite o nome do titular da conta:');
  String nt = stdin.readLineSync()!;
  await Future.delayed(Duration(seconds: 1));
  print('Digite 0 para fazer uma transferência\nou 1 para fazer um saque:');
  int opc = int.parse(stdin.readLineSync()!);
  ContaBancaria cb1 = new ContaBancaria(nc, nt, 2567.59);
  await Future.delayed(Duration(seconds: 1));
  if(opc == 0){
    print('Digite a quantia da transferência:');
    double vt = double.parse(stdin.readLineSync()!);
    cb1.transf(vt);
  }else if(opc == 1){
    print('Digite a quantia do saque:');
    double vs = double.parse(stdin.readLineSync()!);
    cb1.saque(vs);
  }
}