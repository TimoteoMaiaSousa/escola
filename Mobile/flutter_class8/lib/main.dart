import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'login.dart';
void main() {
  runApp(DevicePreview(
    enabled: true,
    builder:(context) => ReceitasApp()
  ));
}

class ReceitasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receitas App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Login(),
    );
  }
}
