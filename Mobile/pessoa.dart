import 'dart:io';
class Pessoa{
  int npessoa = 0;
  String nome = '';
  int idade = 0;
  double altura = 0;
  Pessoa(this.nome, this.idade, this.altura, this.npessoa);
  void printinfos(){
    print("-----Pessoa $npessoa-----\nNome: $nome\nIdade: $idade\nAltura: ${altura.toStringAsFixed(2)}");
  }

}
void main(){
  var numDaPessoa = [];
  print('Nome:');
  String nome = stdin.readLineSync() ?? '';
  print('Idade:');
  int idade = int.parse(stdin.readLineSync() ?? '0');
  print('Altura:');
  double altura = double.parse(stdin.readLineSync() ?? '0');
  if(nome == ''|| idade == 0 || altura == 0){
    print('Faltaram dados! (°`=´°)');
  }else{
    numDaPessoa.add(1);
    Pessoa pessoa1 = Pessoa.new(nome, idade, altura, numDaPessoa.lastOrNull);
  pessoa1.printinfos();
  }
  

}