import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,

  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases=[
    "Dia após dia, sempre esteja aprendendo",
    "Treine sua mente para evitar perder a paciencia",
    "Todos temos nossas batalhas",
    "O exterior reflete o nosso interior",
    "Criamos nossa propria realidade a nossa volta"
  ]; //underline significa que a variavel so pode ser usada dentro da clase _HomeState
  var _fraseGerada ="Clique abaixo para gerar uma nova frase ";
  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length); //gera numeros randomicos inteiros
    setState(() {
     _fraseGerada = _frases[numeroSorteado];
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia",
        textAlign: TextAlign.right,
        style: TextStyle(
          color:Colors.black
        ),
        ),
        backgroundColor: Colors.greenAccent,        
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity, // devinida como 100% do espaço disponivel 
        //antes do conteiner podemos usar a classe Center() que centraliza o conteudo automaticamente 
        decoration: BoxDecoration(
          border: Border.all(width: 3,color:Colors.amber)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("imgs/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color:Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color:Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed:_gerarFrase // sem os parenteses
            ),

          ],
        ),
      ),
    );
  }
}