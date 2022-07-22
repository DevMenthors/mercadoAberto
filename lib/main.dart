import 'package:flutter/material.dart';

import 'homePage/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercado Aberto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, //retira faixa de debug da tela
      home: const MyHomePage(title: 'Mercado Aberto'),
    );
  }
}
