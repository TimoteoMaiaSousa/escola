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
          title: const Text('Layout Flutter'),
          backgroundColor: const Color.fromRGBO(69, 160, 246, 1),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 45),
          toolbarHeight: 100,
        ),
        body: 
          Center(
            child: Stack(
              alignment: const AlignmentDirectional(0, 0),
              children: <Widget> [
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 164, 200, 225),
                  
                ),
                Container(
                  width: 190,
                  height: 190,
                  color: Color.fromARGB(255, 178, 224, 246),
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Color.fromARGB(255, 135, 206, 235),
                  
                ),
                Container(
                  width: 170,
                  height: 170,
                  color: const Color.fromARGB(255, 64, 224, 208),
                  
                ),
                Container(
                  width: 160,
                  height: 160,
                  color: Color.fromARGB(255, 162, 194, 224),
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: const Color.fromARGB(255, 173, 216, 230),
                  
                ),
                Container(
                  width: 140,
                  height: 140,
                  color: Color.fromARGB(255, 0, 191, 255),
                  
                ),
                Container(
                  width: 130,
                  height: 130,
                  color: const Color.fromARGB(255, 65, 105, 225),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Color.fromARGB(255, 0, 0, 128),
                  
                ),
                Container(
                  width: 110,
                  height: 110,
                  color: Color.fromARGB(255, 0, 71, 171),
                  
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(255, 0, 51, 102),
                ),
                Container(
                  width: 90,
                  height: 90,
                  color: Color.fromARGB(255, 30, 144, 255),
                  
                ),
                Container(
                  width:80,
                  height: 80,
                  color: Color.fromARGB(255, 0, 255, 255),
                  
                ),
                Container(
                  width: 70,
                  height: 70,
                  color: Color.fromARGB(255, 59, 89, 152),
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Color.fromARGB(255, 70, 130, 180),
                  
                ),
                Container(
                  width:50,
                  height: 50,
                  color: Color.fromARGB(255, 70, 130, 180),
                  
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Color.fromARGB(255, 0, 139, 139),
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Color.fromARGB(255, 25, 25, 112),
                  
                ),
                Container(
                  width:20,
                  height: 20,
                  color: Color.fromARGB(255, 75, 0, 130),
                  
                ),
                Container(
                  width: 10,
                  height: 10,
                  color: Color.fromARGB(255, 0, 0, 139),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
