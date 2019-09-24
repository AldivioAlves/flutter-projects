import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGas = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Alcool ou Gasolina"),
        backgroundColor: Colors.blue),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset("imgs/logo.png"),

            ),
            Padding(
              padding: EdgeInsets.only(bottom:10),
              child:Text(
                "Saiba qual é a melhor opção para abastecer o seu carro.",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
                ),
                
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço Alcool, ex 1.59",
              ),
               style: TextStyle(
                 fontSize: 22
               ),
               controller: _controllerAlcool,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Preço Gasolina, ex 3.59",
              ),
               style: TextStyle(
                 fontSize: 22
               ),
               controller: _controllerGas,

            ),
            Padding(
              padding: EdgeInsets.only(top:10),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                child: Text(
                  "calcular",
                  style: TextStyle(
                    fontSize: 20
                  ),),
                onPressed: (){},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:20),
              child: Text(
                "Resultado",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
                ),
            )

          ],
        ),
        ),

      ),
    );
  }
}

