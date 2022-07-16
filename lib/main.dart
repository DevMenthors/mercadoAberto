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
      title: 'Mercado Aberto',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, //retira faixa de debug da tela
      home: const MyHomePage(title: 'Mercado Aberto'),
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
                  focusedBorder: bordaInputSearch(),
                  enabledBorder: bordaInputSearch(),
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
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: FractionalOffset(0.5, 0.2),
                  colors: [Color(0xfffffdb15), Color(0xfff5f5f5)]),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.network(
                    'https://media.istockphoto.com/photos/handwritten-integrated-marketing-structure-in-the-notepad-picture-id1318841464?s=612x612',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              //barrinha 1
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: FractionalOffset(1.0, 0.2),
                        colors: [Color(0xfffa90f90), Color(0xfff0c1a51)]),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Assine o nível 6 a partir de R\$ 9,90',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //barrinha 2
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.local_shipping, color: Colors.green),
                        SizedBox(width: 4),
                        Text(
                          'Frete Grátis',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          'em fretes de menos de R\$ 79',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              //icones
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  icons(Icon(Icons.phone_android, color: Colors.grey), 'Phone'),
                  icons(
                      Icon(Icons.local_offer, color: Colors.grey), 'Promotion'),
                  icons(Icon(Icons.shopping_basket, color: Colors.grey),
                      'Market'),
                  icons(Icon(Icons.phone_android, color: Colors.grey), 'Phone'),
                  icons(Icon(Icons.add, color: Colors.grey), 'Add'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  OutlineInputBorder bordaInputSearch() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      borderSide: BorderSide(color: Colors.white, width: 5.0),
    );
  }

  Column icons(Icon iconWidget, String descriptionIcon) {
    return Column(
      children: [
        Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              color: Colors.white,
            ),
            child: IconButton(
              icon: iconWidget,
              onPressed: () {},
            )),
        SizedBox(height: 4),
        Text(descriptionIcon, style: TextStyle(color: Colors.grey))
      ],
    );
  }
}
