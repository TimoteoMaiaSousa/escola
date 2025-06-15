import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_class5/laranja.dart';
import 'package:flutter_class5/cenoura.dart';
import 'package:flutter_class5/chocolate.dart';

class Rotas extends StatelessWidget {
  const Rotas({super.key});

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