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
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                Consumer<PokemonPresenter>(
                  builder: (_, p, w) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: presenter.listaPokemons.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(75, 5, 75, 5),
                            child: Image.network(
                                presenter.listaPokemons[index].thumbnailImage ??
                                    ''),
                          ),
                        );
                      },
                    );
                  },
                ),
                if (context.watch<PokemonPresenter>().loading)
                  const Center(child: CircularProgressIndicator()),
              ],
            ),
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
