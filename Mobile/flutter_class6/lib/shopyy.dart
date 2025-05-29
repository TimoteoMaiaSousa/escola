import 'package:flutter/material.dart';

class Shopyy extends StatelessWidget {
  const Shopyy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopee Com Frete Grátis Infinito',
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        toolbarHeight: 120, // Centraliza o título
        // Propriedade flexível para o gradiente
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              // Define as cores do gradiente
              colors: [
                Color.fromARGB(255, 246, 64, 45), // Cor inicial
                Color.fromARGB(255, 254, 100, 50)    // Cor final
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