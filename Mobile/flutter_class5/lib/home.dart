import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'main2.dart';

void main(){
  runApp(DevicePreview(
    enabled: true,
    builder:(context) => ReceitasApp())
    );
  runApp(
    DevicePreview(
    enabled: true,
    builder:(context) => MenuInferiorR())
  );
}

class HomePage extends StatelessWidget {
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
            child: Container(
              width: 200,
              height: 200,
              child: Image.asset(
                'imagens/logo.png', fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 180,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'imagens/receitas.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(10),
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
                                "Bolo de\nchocolate\ndelicioso",
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
                                          Color.fromARGB(255, 255, 151, 82))
                              ),
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
                                  Navigator.pushNamed(context, '/chocolate');
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
                                "Bolo de\nlaranja\ncom glacê",
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
                                  Navigator.pushNamed(context, '/laranja');
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
                                "Bolo de\ncenoura\ncom ganache",
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
                                  Navigator.pushNamed(context, '/cenoura');
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
        ));
  }
}
