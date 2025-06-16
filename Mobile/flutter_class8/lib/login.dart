import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  bool _showRegister = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromARGB(
                          255, 255, 151, 82), Colors.amber]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: !_showRegister,
                    child: Column(
                      children: [
                        Image.asset(
                          'imagens/logo.png',
                          height: 250,
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const TextField(
                          decoration: InputDecoration(labelText: 'Email'),
                        ),
                        const TextField(
                          decoration: InputDecoration(labelText: 'Senha'),
                          obscureText: true,
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
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
                        Image.asset(
                          'imagens/logo.png',
                          height: 250,
                        ),
                        const Text(
                          "Cadastro",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              labelText: 'Nome de usuário'),
                        ),
                        const TextField(
                          decoration: InputDecoration(labelText: 'Email'),
                        ),
                        const TextField(
                          decoration: InputDecoration(labelText: 'Senha'),
                          obscureText: true,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              labelText: 'Confirme a senha'),
                          obscureText: true,
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
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
          ]),
        ),
      ),
    );
  }
}
