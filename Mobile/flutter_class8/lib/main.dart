import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'login.dart';
void main() {
  runApp(DevicePreview(
    enabled: true,
    builder:(context) => const ReceitasApp()
  ));
}

class ReceitasApp extends StatelessWidget {
  const ReceitasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receitas App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const Login(),
    );
  }
}
