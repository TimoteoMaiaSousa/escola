import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_class6/shopyy.dart';
import 'package:flutter_class6/nubenk.dart';
import 'package:flutter_class6/spotifai.dart';
class MenuInferior extends StatefulWidget {
  const MenuInferior({super.key});

  @override
  State<MenuInferior> createState() => _MenuInferiorState();
}

class _MenuInferiorState extends State<MenuInferior> {
  int _indiceAtual = 0;
  int _selectedIndex = 0;
  final List<Widget> _telas = [
    const Shopyy(),
    const Nubenk(),
    const Spotifai(),
  ];
    // ignore: unused_element
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _telas[_indiceAtual],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: (int indiceNovo) {
            setState(() {
              _indiceAtual = indiceNovo;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.shopify,
              color: _selectedIndex == 0 ? const Color.fromARGB(255, 254, 100, 50) : Colors.grey[700]),
              label: "Shopyy",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money_sharp,
              color: _selectedIndex == 0 ? Colors.purple : Colors.grey[700]),
              label: "Nubenk",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note,
              color: _selectedIndex == 0 ? const Color.fromARGB(255, 28, 198, 89) : Colors.grey[700]),
              label: "Spotifai",
            ),
          ],
        ),
      ),
    );
  }
}
