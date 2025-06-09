import 'package:flutter/material.dart';
import 'package:flutter_class5/favoritos.dart';
import 'home.dart';
import 'package:flutter_class5/laranja.dart';
import 'package:flutter_class5/cenoura.dart';
import 'package:flutter_class5/chocolate.dart';

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
class Rota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/a',
      routes: {
        '/a': (context) => Favoritos(),
        '/choc': (context) => Chocolate(),
        '/lar': (context) => Laranja(),
        '/cen': (context) => Cenoura(),
      },
    );
  }
}