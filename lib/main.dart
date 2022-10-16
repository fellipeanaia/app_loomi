import 'package:app_loomi/model/repositories/repository.dart';
import 'package:app_loomi/presenter/pokemon_presenter.dart';
import 'package:app_loomi/view/cart_page.dart';
import 'package:app_loomi/view/login_page.dart';
import 'package:app_loomi/view/profile_page.dart';
import 'package:app_loomi/view/register_page.dart';
import 'package:app_loomi/view/store_page.dart';
import 'package:app_loomi/view/tutorial_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => PokemonPresenter(Repository()),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loomi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => LoginPage(),
        '/register_page': (context) => RegisterPage(),
        '/store_page': (context) => StorePage(),
        '/tutorial_page': (context) => TutorialPage(),
        '/cart_page': (context) => CartPage(),
        '/profile_page': (context) => ProfilePage(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}
