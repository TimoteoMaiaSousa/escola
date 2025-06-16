import 'package:flutter/material.dart';
import 'screens/tela2.dart'; // Importa a segunda tela

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeira Rota',
      initialRoute: '/', // Define a rota inicial
      routes: {
        '/': (context) => const HomePage(), // Rota para a tela inicial
        '/tela2': (context) => const Tela2(), // Rota para a segunda tela
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira Rota'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tela2'); // Navega usando o nome da rota
              },
              child: const Text('Próxima tela'),
            ),
          ],
        ),
      ),
    );
  }
}
