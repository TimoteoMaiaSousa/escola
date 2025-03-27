class Carro{
  var cor = '';
  var marca = '';
  var nome = '';
  var ano = 0;
  Carro(this.cor, this.marca, this.nome, this.ano);
  void acelerar(){
    print('O carro $nome $marca $ano $cor está acelerando!');
  }
  void frear(){
    print('O carro $nome $marca $ano $cor está freando.');
  }
  void info(var cor, var marca, var nome, var ano){
    print('O carro $nome $marca $ano $cor foi criado');
  }
}