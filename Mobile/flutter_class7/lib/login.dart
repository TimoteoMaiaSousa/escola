import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool statusEntry = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyMedium: const TextStyle(fontFamily: 'Poppins'),
                bodySmall: const TextStyle(fontFamily: 'Poppins'),
                headlineLarge: const TextStyle(fontFamily: 'Poppins'),
              ),
        ),
        home: Scaffold(
          body: Center(
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blueAccent, Colors.lightBlueAccent]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Form(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: TextFormField(
                                style: const TextStyle(
                                    color: Color.fromARGB(197, 255, 255, 255)),
                                decoration: const InputDecoration(
                                  label: Text(
                                    "E-mail",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: TextFormField(
                                style: const TextStyle(
                                    color: Color.fromARGB(197, 255, 255, 255)),
                                decoration: const InputDecoration(
                                  label: Text(
                                    "Senha",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible: !statusEntry,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: TextFormField(
                                      style: const TextStyle(
                                          color: Color.fromARGB(
                                              197, 255, 255, 255)),
                                      decoration: const InputDecoration(
                                        label: Text(
                                          'Confirme a senha',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      obscureText: true,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: TextFormField(
                                      style: const TextStyle(
                                          color: Color.fromARGB(
                                              197, 255, 255, 255)),
                                      decoration: const InputDecoration(
                                        label: Text(
                                          "Nome de usuário",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 20),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      statusEntry = true;
                                    });
                                  },
                                  child: Text(
                                      (statusEntry) ? "Entrar" : "Cadastrar"),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      statusEntry = !statusEntry;
                                    });
                                  },
                                  child: Text(
                                    (statusEntry)
                                        ? "Ainda não possui uma conta? Cadastre-se"
                                        : "Já tem uma conta? Entre já",
                                    style: const TextStyle(color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
