import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color.fromARGB(209, 46, 206, 32),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'E o PIX, nada ainda?',
              style: TextStyle(
                  color: Color.fromARGB(255, 127, 7, 255), fontSize: 30),
            ),
          ),
        ),
      ),
    ),
  ));
}
