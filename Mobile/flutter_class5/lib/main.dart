import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_class5/favoritos.dart';
import 'package:flutter_class5/perfil.dart';
import 'package:flutter_class5/laranja.dart';
import 'package:flutter_class5/cenoura.dart';
import 'package:flutter_class5/chocolate.dart';
void main(){
  runApp(ReceitasApp());
  runApp(ReceitasApp2());
  runApp(MenuInferiorR());
}
class ReceitasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: Rotas(),
    );
  }
}
class ReceitasApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: Rotas2(),
    );
  }
}
class Rotas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/chocolate': (context) => Chocolate(),
        '/laranja': (context) => Laranja(),
        '/cenoura': (context) => Cenoura(),
      },
    );
  }
}
class Rotas2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Favoritos(),
        '/chocolate': (context) => Chocolate(),
        '/laranja': (context) => Laranja(),
        '/cenoura': (context) => Cenoura(),
      },
    );
  }
}
class MenuInferiorR extends StatefulWidget {
  @override
  State<MenuInferiorR> createState() => _MenuInferiorRState();
}

class _MenuInferiorRState extends State<MenuInferiorR> {
  int _indiceAtual = 0;

  final List<Widget> _telas = [
    ReceitasApp(),
    Perfil(),
    ReceitasApp2(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _telas[_indiceAtual],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: (int _indiceNovo) {
            setState(() {
              _indiceAtual = _indiceNovo;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt,
              color: _indiceAtual == 0 ? Color.fromARGB(255, 255, 151, 82) : Colors.grey[600]),
              label: "Receitas",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded,
              color: _indiceAtual == 1 ? Colors.blueAccent : Colors.grey[600]),
              label: "Minha conta",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite,
              color: _indiceAtual == 2 ? Colors.red : Colors.grey[600]),
              label: "Favoritos",
            ),
          ],
        ),
      ),
    );
  }
}