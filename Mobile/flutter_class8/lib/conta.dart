import 'package:flutter/material.dart';

class MinhaConta extends StatefulWidget {
  const MinhaConta({super.key});

  @override
  State<MinhaConta> createState() => _MinhaContaState();
}

class _MinhaContaState extends State<MinhaConta> {
  bool _showProfile = true;
  bool _isLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bem vindo!',
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 70,
        backgroundColor: const Color.fromARGB(255, 255, 151, 82),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Visibility(
                visible: _showProfile,
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _showProfile = false;
                    });
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 151, 82),
                          width: 1.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Image(
                                    image: AssetImage('imagens/user1.jpg'),
                                    height: 70,
                                    width: 70,
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cleber Wilson Costa Filho",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 151, 82),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Chef profissional",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 151, 82),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: const Color.fromARGB(
                                        255, 246, 241, 241),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isLike = !_isLike;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.favorite,
                                      color: _isLike ?  Colors.red  : const Color.fromARGB(255, 187, 187, 187),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // New information to be displayed when _showProfile is false
              Visibility(
                visible: !_showProfile, // Only show if _showProfile is false
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Informações Adicionais:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 151, 82),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Email: cleber.wilson@example.com',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Telefone: (11) 98765-4321',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Endereço: Rua dos Chefs, 123 - São Paulo',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _showProfile = true; // Go back to profile view
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 151, 82),
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Voltar para o perfil'),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
