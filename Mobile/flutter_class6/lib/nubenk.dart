import 'package:flutter/material.dart';

class Nubenk extends StatelessWidget {
  const Nubenk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nubank Com Dinheiro Infinito',
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 120, // Centraliza o título
        // Propriedade flexível para o gradiente
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              // Define as cores do gradiente
              colors: [
                Color.fromARGB(255, 130, 10, 209), // Cor inicial
                Color.fromARGB(255, 130, 10, 209), // Cor inicial
              ],
              // Define a direção do gradiente
              // begin: Alignment.topLeft,
              // end: Alignment.bottomRight,
              // Ou para um gradiente horizontal
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
    );
  }
}