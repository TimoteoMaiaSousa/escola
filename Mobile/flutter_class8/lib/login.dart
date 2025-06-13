import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showRegister = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: !_showRegister,
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    child: const Text('Entrar'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _showRegister = true;
                      });
                    },
                    child: const Text('Criar conta'),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: _showRegister,
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    child: const Text('Cadastrar'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _showRegister = false;
                      });
                    },
                    child: const Text('Já tenho conta'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}