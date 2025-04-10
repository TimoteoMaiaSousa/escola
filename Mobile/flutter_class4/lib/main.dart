import 'package:flutter/material.dart';
import 'screens/tela2.dart'; // Importa a segunda tela

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Primeira Rota',
      initialRoute: '/', // Define a rota inicial
      routes: {
        '/': (context) => HomePage(), // Rota para a tela inicial
        '/tela2': (context) => Tela2(), // Rota para a segunda tela
      },
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Rota'),
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
              child: Text('Próxima tela'),
            ),
          ],
        ),
      ),
    );
  }
}
