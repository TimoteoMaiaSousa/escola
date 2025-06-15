import 'package:flutter/material.dart';
import 'package:flutter_class5/favoritos.dart';
import 'package:flutter_class5/perfil.dart';
import 'package:flutter_class5/rotas.dart';
import 'package:device_preview/device_preview.dart';

void main(){
  runApp(DevicePreview(
    enabled: true,
    builder:(context) => ReceitasApp())
    );
  runApp(
    DevicePreview(
    enabled: true,
    builder:(context) => MenuInferiorR())
  );
}
class ReceitasApp extends StatelessWidget {
  const ReceitasApp({super.key});

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
class MenuInferiorR extends StatefulWidget {
  const MenuInferiorR({super.key});

  @override
  State<MenuInferiorR> createState() => _MenuInferiorRState();
}

class _MenuInferiorRState extends State<MenuInferiorR> {
  int _indiceAtual = 0;

  final List<Widget> _telas = [
    ReceitasApp(),
    Perfil(),
    Favoritos()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _telas[_indiceAtual],

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: (int indiceNovo) {
            setState(() {
              _indiceAtual = indiceNovo;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt,
              color: _indiceAtual == 0 ? const Color.fromARGB(255, 255, 151, 82) : Colors.grey[600]),
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