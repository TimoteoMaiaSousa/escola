import 'package:flutter/material.dart';
import 'receitas.dart';
import 'conta.dart';
import 'favoritos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getBody() {
    switch (_selectedIndex) {
      case 0:
        return const Receitas();
      case 1:
        return const MinhaConta();
      case 2:
        return const Favoritos();
      default:
        return const Receitas();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Receitas do Chef Tim',
            style: TextStyle(color: Colors.white),
          ),
          toolbarHeight: 70,
          backgroundColor: const Color.fromARGB(255, 255, 151, 82),
          leading: Padding(
            padding: const EdgeInsets.all(0),
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                'imagens/logo.png', fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      body: _getBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Receitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Minha Conta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
