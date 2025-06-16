import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 69, 160, 246),
                  ),
                  child: const Center(
                    child: Text(
                      '1',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255), fontSize: 30),
                    ),
                  ),
                ),
                Expanded(flex: 4,
                  child: Container(
                    constraints: const BoxConstraints(
                        minWidth: 100,
                        minHeight: 100,
                        maxHeight: 100,
                        maxWidth: 300),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 58, 136, 208),
                    ),
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 10,
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 42, 98, 151),
                    ),
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255), fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 10,
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 69, 160, 246),
                    ),
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255), fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 4,
                  child: Container(
                    constraints: const BoxConstraints(
                        minWidth: 100,
                        minHeight: 100,
                        maxHeight: 100,
                        maxWidth: 300),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 58, 136, 208),
                    ),
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 30),
                      ),
                    ),
                  ),
                ),
                Expanded(flex: 0,
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 42, 98, 151),
                    ),
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255), fontSize: 30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
