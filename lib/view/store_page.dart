import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../presenter/pokemon_presenter.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  late PokemonPresenter presenter;

  @override
  void initState() {
    presenter = context.read<PokemonPresenter>();
    presenter.getPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50, bottom: 50),
            child: Text(
              'Opções de tintas',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(40, 10, 40, 10),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 10, 60, 90),
                  child: Expanded(
                      child: Image.asset('images/Suvinil_Classica.jpg')),
                ),
                const Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: 188),
                  child: Text(
                    'Tinta Suvinil Clássica',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 35,
                        width: 90,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color(0xFFDADADA)),
                        child: const Center(
                          child: Text(
                            'Indicação',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 75),
                  child: GestureDetector(
                    child: const IconButton(
                      iconSize: 45,
                      icon: Icon(Icons.arrow_back),
                      color: Color(0xFFDADADA),
                      onPressed: null,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: const IconButton(
                          iconSize: 45,
                          icon: Icon(Icons.arrow_forward),
                          color: Color(0xFFDADADA),
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 225, 50, 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF5B4DA7)),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30)),
                        ),
                      ),
                    ),
                    onPressed: null,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      child: Text(
                        'Como pintar',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 225, 32, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFA4A4A4)),
                          shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30)),
                            ),
                          ),
                        ),
                        onPressed: null,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 5, 10),
                          child: Text(
                            'Tirar dúvidas',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Card(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(155, 100, 155, 100),
                child: Column()),
          ),
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.store),
                label: 'Loja',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_sharp),
                label: 'Carrinho',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Perfil',
              ),
            ],
            selectedItemColor: const Color(0xFF5B4DA7),
          ),
        ],
      ),
    );
  }
}
