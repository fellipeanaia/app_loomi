import 'package:app_loomi/view/cart_page.dart';
import 'package:app_loomi/view/login_page.dart';
import 'package:app_loomi/view/profile_page.dart';
import 'package:app_loomi/view/register_page.dart';
import 'package:app_loomi/view/store_page.dart';
import 'package:app_loomi/view/tutorial_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
