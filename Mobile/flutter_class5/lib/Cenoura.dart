import 'package:flutter/material.dart';

class Cenoura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'imagens/bolocenoura.webp',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            actions: [
              IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(
                  Icons.favorite_border,
                  size: 40,
                ),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bolo de Cenoura com Ganache',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.timer,
                          size: 20,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text('1 hora',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 16,),
                        Icon(
                          Icons.people,
                          size: 20,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          '9 pedaços',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Ingredientes do bolo',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3 cenouras médias\n'
                          '1/2 xícara de óleo\n'
                          '2 ovos\n'
                          '2 xícaras de açúcar\n'
                          '1 xícara de farinha de trigo\n'
                          '1 xícara de farinha de trigo integral\n'
                          '2 colheres de chá de fermento em pó',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Ingredientes do ganache',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          '2 tabletes de 180 gramas de chocolate meio amargo picado\n'
                          '1 caixa de creme de leite\n',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                          ),
                        ),
                        Text(
                          'Modo de preparo do bolo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('1 - Preaqueça o forno a 180 graus Celsius;\n'
                            '2 - Bata a cenoura, o óleo e os ovos no liquidificador até formar um creme;\n'
                            '3 - Em uma vasilha, misture o açúcar, as farinhas e o fermento;\n'
                            '4 - Aos poucos, misture o creme até que fique uma massa homogênea;\n'
                            '5 - Despeje a massa nas forminhas de silicone e leve ao forno por aproximadamente 30 minutos.',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                        ),
                        Text(
                          'Modo de preparo do ganache',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('1 - Derreta o chocolate em uma panela em banho-maria e depois misture com o creme de leite;\n'
                            '2 - Quando o bolo já estiver fora das forminhas, cubra com a ganache;\n',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.share),
        onPressed: () {
          
        },
      ),
    );
  }
}
