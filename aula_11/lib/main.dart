import 'package:flutter/material.dart';
import 'dart:math';

//app de frases aleatorias com array de frases
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'APP frases aleatórias',
    home: frases(),
  ));
}
class frases extends StatefulWidget {
  const frases({Key? key}) : super(key: key);

  @override
  State<frases> createState() => _frasesState();
}

class _frasesState extends State<frases> {

  //inicio do back
  //criar um array de frases para serem exibidas de forma aleatória

  final _frases = [
    'O que a galinha disse para o café? Po-pô-pó?',
    'Quem precisa de inimigos quando se tem amigos como eu?',
    'Por que os mergulhadores mergulham sempre de costas? Porque se mergulharem de frente, caem dentro do barco!',
    'Se alguém lhe jogar uma pedra, mostre que você é diferente, jogue um tijolo!',
    'Tem dias que a gente sai para trabalhar do mesmo jeito que veio ao mundo: contra a nossa vontade!',
    'Acho que vi um gatinho!',
    'Está escuro aqui embaixo. Eu sabia que deveria ter trazido uma lanterna.'
  ];

  var _FrasesGerada = 'O que é que há, velhinho?';//o texto depois da imagem da logo, para chamar a função

  void _gerarFrase(){//função de gerar a frase aleatória
    //número sorteado irá pegar aleatóriamente de 0,1,2,3,4 das frases do array

    var numeroSorteado = Random().nextInt(_frases.length);
    //random é um importe do dart:math
    //sendo responsável para exibir o array de forma aleatória
    setState(() {
      _FrasesGerada = _frases[numeroSorteado];
    });
  }

  //fim do back


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5E5E5E),
      appBar: AppBar(
        title: Text('Frases do dia - Pernalonga'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[
              Image.asset('image/perna.png'
              ),
              Text(_FrasesGerada,
                style: TextStyle(
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,

                ),
              ),
              ElevatedButton(
                  onPressed: _gerarFrase,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 18,
                    shadowColor: Colors.white
                  ),
                  child: Text('Nova Frase',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),


                  ))
            ],
          ),
        ),
      ),
    );
  }
}

