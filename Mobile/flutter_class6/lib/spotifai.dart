import 'package:flutter/material.dart';

class Spotifai extends StatelessWidget {
  const Spotifai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spotify Com Pular de Música Infinito',
        style: TextStyle(color: Color.fromARGB(255, 28, 198, 89)),),
        centerTitle: true,
        toolbarHeight: 120, // Centraliza o título
        // Propriedade flexível para o gradiente
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              // Define as cores do gradiente
              colors: [
                Colors.black, // Cor inicial
                Color.fromARGB(255, 67, 67, 67), // Cor inicial
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