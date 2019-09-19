import 'package:flutter/material.dart';
class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Jokenpo"),
      ) ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:32,bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
               ),

            ),
          ),
          GestureDetector(
            onTap:(){print("imagem clicada!!");} ,
            child: Image.asset("imgs/padrao.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top:32,bottom: 16),
            child: Text(
              "Escolha uma opção abaixo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
               ),

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
              Image.asset("imgs/pedra.png",height: 100,),
              Image.asset("imgs/papel.png",height: 100,),
              Image.asset("imgs/tesoura.png",height: 100,)
            ],
          )

        ],
      ),
    );
  }
}