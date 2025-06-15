import 'package:flutter/material.dart';

class Chocolate extends StatelessWidget {
  const Chocolate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'imagens/bolo.jpg',
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
                      'Bolo de Chocolate',
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
                        Text('40 minutos',
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
                          '8 pedaços',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Ingredientes',
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
                          '2 xícaras de farinha de trigo\n'
                          '1 xícara de açúcar\n'
                          '1 xícara de chocolate em pó\n'
                          '1 colher de sopa de fermento\n'
                          '1 xícara de leite\n'
                          '1/2 xícara de óleo\n'
                          '2 ovos',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Modo de preparo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('1 - Misture todos os ingredientes;\n'
                            '2 - Adicione os ingredientes líquidos e misture bem;\n'
                            '3 - Despeje a massa em um forma  e leve ao forno pré aquecido a 180°C;\n'
                            '4 - Faça o teste do palito para verificar se está assado;\n'
                            '5 - Deixe esfriar antes de desenformar.',
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
        child: const Icon(Icons.share),
        onPressed: () {
          
        },
      ),
    );
  }
}
