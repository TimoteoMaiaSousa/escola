import 'package:flutter/material.dart';

class MinhaConta extends StatelessWidget {
  const MinhaConta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Bem vindo!',
              style: TextStyle(color: Colors.white),
            ),
            toolbarHeight: 70,
            backgroundColor: const Color.fromARGB(255, 255, 151, 82)),
        body: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 255, 151, 82), // Cor da borda
                        width: 1.0, // Largura da borda em pixels
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(10.0)),
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
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Cleber Wilson Costa Filho",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 151, 82),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("Chef profissional",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 151, 82))),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color.fromARGB(255, 246, 241, 241),
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.grey[300],
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      // Outros itens da lista podem vir aqui
                    ],
                  ),
                ),
              ),
            ])),
          ],
        ));
  }
}
