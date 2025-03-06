dynamic contavogais(String nome){
  List l = nome.split('');
  int cont = 0;
  String vogais = 'aeiouAEIOU';
  l.forEach((element) { 
    if (vogais.contains(element)){
      cont++;
    }
  });

  return cont;
}

dynamic cortastring(String a, String b){
  List l1 = [];
  List l2 = [];
  for (String c in a.split(' ')){
    l1.add(c);
  }
  for(String d in b.split(' ')){
    l2.add(d);
  }
  l1.removeWhere((element) => l2.contains(element));
  
  dynamic ls = l1.reduce((value, element) {
    return value + ' ' + element;
  });

  return ls;
}



void main(){
  print(cortastring('Eu vou para a praia', 'Eu'));

  Map<int, String> numeros = Map();
  numeros[0] = 'zero';
  numeros[1] = 'um';
  numeros[250] = 'duzentos';
  numeros.update(250, (value) => value + ' e cinquenta');
  print(numeros.length);
  numeros.forEach((key, value){
    print('$key = $value');
  });
  Carro c1 = Carro.new();
  c1.acelerar();

  Gato g1 = Gato.new();
  g1.acelerar();

  List la = [5, 13, 59, 38, 19, 476, 95, 891, 71];
  la.add(100);
  la.sort();
  print(la);
  print(la.reversed);
  print(la.length);
  la.remove(0); // Numero da lista
  la.removeAt(4); // Indice
  print(la);
  print(la.where((element) => element < 20));
  print(la.reduce((value, element) {
    return value.toString() + ' ' + element.toString();
  }));
  print(la);
  la.removeRange(0, 4);
  print(la);
  //List lb = ['Timoteo', 50, 'Pedro', 40];
  Iterable z = [43, 21];
  la.insertAll(0, z);
  print(la);
  print(la.elementAt(5)); // Pegar numero pelo indice

}

class Carro {
  void acelerar(){
    print('rum dum dum dum dum dum dum dum');
  }
}

class Gato extends Carro {

  void acelerar(){
    print('rum dum dum dum dum dum dum du do gato');
  }
}

