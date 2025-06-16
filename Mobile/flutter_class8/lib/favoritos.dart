import 'package:flutter/material.dart';
import 'package:flutter_class8/cenoura.dart';
import 'package:flutter_class8/chocolate.dart';
import 'package:flutter_class8/laranja.dart';

class Favoritos extends StatelessWidget {
  const Favoritos({super.key});

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
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Chocolate()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 255, 151, 82), // Cor da borda
                            width: 1.0, // Largura da borda em pixels
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
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
                                        color: Color.fromARGB(255, 255, 151, 82),
                                        fontSize: 10,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Laranja()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 255, 151, 82), // Cor da borda
                            width: 1.0, // Largura da borda em pixels
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                      image:
                                          AssetImage('imagens/bololaranja.webp'),
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
                                        color: Color.fromARGB(255, 255, 151, 82),
                                        fontSize: 10,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Cenoura()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 255, 151, 82), // Cor da borda
                            width: 1.0, // Largura da borda em pixels
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                      image:
                                          AssetImage('imagens/bolocenoura.webp'),
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
                                    width: 14,
                                  ),
                                  Icon(Icons.timer,
                                      size: 20,
                                      color: Color.fromARGB(255, 255, 151, 82)),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text("1 hora",
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 255, 151, 82),
                                        fontSize: 10,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ])),
          ],
        ));
  }
}
