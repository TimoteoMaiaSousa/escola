import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Layout Flutter'),
          backgroundColor: Color.fromRGBO(69, 160, 246, 1),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 45),
          toolbarHeight: 100,
        ),
        body: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 69, 160, 246),
              ),
              child: Center(
                child: Text('1',
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 30),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 58, 136, 208),
              ),
              child: Center(
                child: Text('2',
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 30),
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 42, 98, 151),
              ),
              child: Center(
                child: Text('3',
                style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}