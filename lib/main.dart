import 'dart:ui';

import 'package:flutter/material.dart';

  void main() {
    runApp(const MyApp());
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
        home: const MyHomePage(title: 'Barra de pesquisa'),
        debugShowCheckedModeBanner: false,
        
      );
    }
  }

  class MyHomePage extends StatefulWidget {
    const MyHomePage({Key? key, required this.title}) : super(key: key);


    final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {
    int _counter = 0;
    

    void _incrementCounter() {
      setState(() {

        _counter++;
      });
    }

    @override
    Widget build(BuildContext context) {
  
      return Scaffold(
        appBar: AppBar(
          leading:( // joga tudo para o lado esquerdo
             Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0), 
             child: Icon(Icons.menu, color: Colors.black,),)
          ),

          //title: const Center(child: Text ('Mercado Aberto'),), --- //coloca titulo no centro (cria um center e uma child e dentro da child coloca-se o texto)
          actions: <Widget>[ // joga tudo para o lado direito
          Container(
            width: MediaQuery.of(context).size.width -(2*32) -(8*5),
            child: Padding(padding: EdgeInsets.only(top: 2,bottom: 2),
            child: TextField(
              decoration: InputDecoration(
                isDense: true,
                prefixIcon: Icon(Icons.search),
               fillColor: Colors.white, filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide: BorderSide(width: 5.0), ),
                  hintText: 'Buscar no Mercado Aberto',
                   ),
            ),),
            ),
            Padding(padding:  EdgeInsets.fromLTRB(6, 0, 12, 0),
            child:Icon(Icons.shopping_cart_outlined, color: Colors.black),) //cor é ao lado do icon

          
        
        ],

          bottom:
            PreferredSize(
            preferredSize: Size(50,30),
            child:ListTile(
              leading: Icon(Icons.location_on_outlined, color: Colors.black,),
              title: Text('Enviar para Marcello Queiroz - Rua Jardim Paulista, 56'),
            ),
          ),
          
          backgroundColor: const Color(0xfff5d415), //comando que muda a cor apenas da barra
        ),
        body: Container(
         decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            colors: <Color> [
            Color(0xfff5d415),
            Color(0xfff5f5f5),
            ]
          )
         ),
         
        ),
      );
    }
  }