import 'package:flutter/material.dart';
import 'chocolate.dart';
import 'cenoura.dart';
import 'laranja.dart';

class Receitas extends StatelessWidget {
  const Receitas({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Chocolate()),
                );
              },
              child: const Text('Receita de Chocolate'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cenoura()),
                );
              },
              child: const Text('Receita de Cenoura'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Laranja()),
                );
              },
              child: const Text('Receita de Laranja'),
            ),
          ),
        ],
      ),
    );
  }
}
