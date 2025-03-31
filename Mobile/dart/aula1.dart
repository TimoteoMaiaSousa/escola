import 'dart:io';
void main() {
  print("Informe o número de casos suspeitos:");
  int casosSuspeitos = int.parse(stdin.readLineSync() ?? '0');

  print("Informe o número de casos confirmados:");
  int casosConfirmados = int.parse(stdin.readLineSync() ?? '0');

  print("Informe o número de mortes:");
  int mortes = int.parse(stdin.readLineSync() ?? '0');
  int Casostotais = casosSuspeitos+casosConfirmados;
  if(mortes > casosConfirmados || casosConfirmados > casosSuspeitos){
    print("Casos suspeitos: $casosSuspeitos\nCasos confirmados: $casosConfirmados\nNumero de mortes: $mortes\nOs dados fornecidos são imcompatíveis.");
  }else{
    print('Casos totais: $Casostotais');
  }
}