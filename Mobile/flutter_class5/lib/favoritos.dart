import 'package:flutter/material.dart';
import 'package:flutter_class5/rotas.dart';

void main(){
  runApp(Rota());
}

class Favoritos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            title: const Text(
              'Favoritos',
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
                                  image: AssetImage('imagens/bolo.jpg'),
                                  height: 70),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "Bolo de chocolate delicioso",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 151, 82),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Icon(Icons.timer,
                                  size: 20,
                                  color: Color.fromARGB(255, 255, 151, 82)),
                              SizedBox(
                                width: 4,
                              ),
                              Text("40 min",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 151, 82))),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 246, 241, 241),
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_right_rounded,
                                  size: 50,
                                  color: Color.fromARGB(255, 255, 151, 82),
                                ), // Ícone de seta para a direita (estilo iOS)
                                onPressed: () {
                                  Navigator.pushNamed(context, '/choc');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Outros itens da lista podem vir aqui
                    ],
                  ),
                ),
              ),
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
                                  image: AssetImage('imagens/bololaranja.webp'),
                                  height: 70),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "Bolo de laranja com glacê",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 151, 82),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Icon(Icons.timer,
                                  size: 20,
                                  color: Color.fromARGB(255, 255, 151, 82)),
                              SizedBox(
                                width: 4,
                              ),
                              Text("1 - 2 horas",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 151, 82))),
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
                                icon: const Icon(
                                  Icons.arrow_right_rounded,
                                  size: 50,
                                  color: Color.fromARGB(255, 255, 151, 82),
                                ), // Ícone de seta para a direita (estilo iOS)
                                onPressed: () {
                                  Navigator.pushNamed(context, '/lar');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Outros itens da lista podem vir aqui
                    ],
                  ),
                ),
              ),
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
                                  image: AssetImage('imagens/bolocenoura.webp'),
                                  height: 70),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                "Bolo de cenoura com ganache",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 151, 82),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Icon(Icons.timer,
                                  size: 20,
                                  color: Color.fromARGB(255, 255, 151, 82)),
                              SizedBox(
                                width: 4,
                              ),
                              Text("1 hora",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 151, 82))),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 246, 241, 241),
                              ),
                              child: IconButton(
                                icon: const Icon(
                                  Icons.arrow_right_rounded,
                                  size: 50,
                                  color: Color.fromARGB(255, 255, 151, 82),
                                ), // Ícone de seta para a direita (estilo iOS)
                                onPressed: () {
                                  Navigator.pushNamed(context, '/cen');
                                },
                              ),
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
        )
    );
  }
}