import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop_app/models/cart.dart';
import 'package:sneaker_shop_app/pages/about_page.dart';
import 'package:sneaker_shop_app/pages/intro_page.dart';
import 'package:sneaker_shop_app/pages/home_page.dart';
import 'package:sneaker_shop_app/pages/cart_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sneaker Shop App',
        initialRoute: '/',
        routes: {
          '/': (context) => const IntroPage(),
          '/home': (context) => const HomePage(),
          '/cart': (context) => const CartPage(),
          '/about': (context) => const AboutPage(),
        },
      ),
    );
  }
}
