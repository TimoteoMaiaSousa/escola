import 'dart:io';
void main(){
  double pfx = 0.26;
  print('Quanto tempo durou a chamada? (Em minutos. Ex: 1,2,3,etc)');
  int t = int.parse(stdin.readLineSync() ?? '0');
  double pt = 0;
  if(t>=3){
    pt = ((t-3)*pfx)+1.15;
    print('Preço total: $pt');
  }else{
    print('Não aceitamos chamadas abaixo de 3 minutos seu liso');
  }
  
}