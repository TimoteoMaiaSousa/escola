import 'package:flutter/material.dart';

// void main() {
//     runApp(MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             color: Color.fromARGB(209, 46, 206, 32),
//             padding: EdgeInsets.all(10),
//             child: Text('E o PIX, nada ainda?',
//               style: TextStyle(color: Color.fromARGB(255, 127, 7, 255), fontSize: 20),
//             ),
//           ),
//         ),
//       ),
//     ),
//   );
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  final String nome;
  final String nome2;
  
  const MyApp([Key? key, this.nome = 'Pedro', this.nome2 = 'Cabeça'])
    : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int salario = 3000;
  int salario2 = 5000;

  void aumentaSalario() {
    setState(() => salario++);
  }

  void diminuiSalario() {
    setState(() => salario--);
  }

  void aumentaSalario2() {
    setState(() => salario2++);
  }

  void diminuiSalario2() {
    setState(() => salario2--);
  }

  void zerarsalario1(){
    setState((){
      salario = 0;
    });
  }

  void zerarsalario2(){
    setState((){
      salario2 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Titulo da minha barra de navegação'),
          backgroundColor: Colors.blue
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  aumentaSalario();
                },
                onLongPress: zerarsalario1,
                child: Text(
                  'Meu nome é ${widget.nome} e meu salário é $salario',
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              GestureDetector(
                onTap: () {
                  aumentaSalario2();
                },
                onLongPress: zerarsalario2,
                child: Text(
                  'Meu nome é ${widget.nome2} e meu salário é $salario2',
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ), //Text
              ), //GestureDetector
            ], //Children
          ), //Column
        ), //Center
      ), //Scaffold
    ); //MaterialApp
  }
}

