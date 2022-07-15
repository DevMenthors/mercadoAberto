import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercado Livre',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, //retira faixa de debug da tela
      home: const MyHomePage(title: 'Mercado Livre'),
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
        elevation: 0,
        //--------------------------------------------------
        //BTN MENU
        leading: Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: [
          //--------------------------------------------------
          //INPUT
          Padding(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Container(
              width: 400,
              height: 250,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xfff898987),
                    size: 18,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Buscar no Mercado Aberto',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(
                      0, 2, 0, 0), //centraliza o texto dentro do input
                  // estilizando a borda
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    borderSide: BorderSide(color: Colors.white, width: 5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    borderSide: BorderSide(color: Colors.white, width: 5.0),
                  ),
                ),
              ),
            ),
          ),
          //-------------------------------------------------------------
          //CARRINHO DE COMPRAS
          Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
                alignment: Alignment(-1.0, 0.0),
                color: Colors.black,
                tooltip: "Compras" // texto que aparece ao passar mouse por cima
                ),
          ),
        ],
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 0, 4, 0),
                      child: Icon(Icons.location_on_outlined),
                    ),
                    Text(
                        "Enviar para Marcello Queiroz - Rua Jardim Paulista, 56",
                        textAlign: TextAlign.center),
                  ],
                ),
              ],
            )),

        backgroundColor: Color(0xfffffdb15),
        //backgroundColor: Colors.red , é outra forma de colocar cores de fundo
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topRight,
              // end: Alignment(0, -0.4),
              colors: [Color(0xfffffdb15), Color(0xfff5f5f5)]),
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [],
      //   ),
      // ),
    );
  }
}
