import 'package:flutter/material.dart';
import 'home.dart';

void main(){
  runApp(ReceitasApp());
}
class ReceitasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Receitas',
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: MyApp()
    );
  }
}