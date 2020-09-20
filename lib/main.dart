import 'dart:math';
import "package:audioplayers/audio_cache.dart";
import 'package:flutter/material.dart';

void main() {
  //runApp(MyApp());
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('No Make Sense'),
          backgroundColor: Colors.blueGrey,
        ),
        body: MudaCor(),
      ),
    ),
  );
}

class MudaCor extends StatefulWidget {
  @override
  _MudaCorState createState() => _MudaCorState();
}

class _MudaCorState extends State<MudaCor> {
  Color cor1 = Colors.white;
  Color cor2 = Colors.white;
  Color cor3 = Colors.white;
  Color cor4 = Colors.white;
  Color cor5 = Colors.white;
  Color cor6 = Colors.white;
  Color cor7 = Colors.white;
  Color cor8 = Colors.white;
  Color cor9 = Colors.white;

  void playSound() {
    final player = AudioCache();
    var valor = Random().nextInt(7) + 1;
    player.play('note$valor.wav');
  }

  Color mudarcor() {
    Color novacor;
    var valor = Random().nextInt(5) + 1;
    if (valor == 1) {
      novacor = Colors.brown;
    } else if (valor == 2) {
      novacor = Colors.deepOrange;
    } else if (valor == 3) {
      novacor = Colors.lightBlue;
    } else if (valor == 4) {
      novacor = Colors.tealAccent;
    } else if (valor == 5) {
      novacor = Colors.yellow;
    }
    setState(() {});
    playSound();
    return novacor;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,       
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    cor1=mudarcor();
                    //playSound();
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: cor1,
                  ),
                )
              ),
              
              SizedBox(height: 10,),

              Expanded(
                child: FlatButton(
                  onPressed: () {
                    cor2=mudarcor();
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: cor2,
                  ),
                )
              ),
              
              SizedBox(height: 10,),

              Expanded(
                child: FlatButton(
                  onPressed: () {
                    cor3=mudarcor();
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: cor3,
                  ),
                )
              ),
            ]
          ),
          
          SizedBox(height: 10,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    cor4=mudarcor();
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: cor4,
                  ),
                )
              ),
              
              SizedBox(height: 10,),

              Expanded(
                child: FlatButton(
                  onPressed: () {
                    cor5=mudarcor();
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: cor5,
                  ),
                )
              ),
              
              SizedBox(height: 10,),

              Expanded(
                child: FlatButton(
                  onPressed: () {
                    cor6=mudarcor();
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: cor6,
                  ),
                )
              ),
            ]
          ),
          
          SizedBox(height: 10,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    cor7=mudarcor();
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: cor7,
                  ),
                )
              ),
              
              SizedBox(height: 10,),

              Expanded(
                child: FlatButton(
                  onPressed: () {
                    cor8=mudarcor();
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: cor8,
                  ),
                )
              ),
              
              SizedBox(height: 10,),

              Expanded(
                child: FlatButton(
                  onPressed: () {
                    cor9=mudarcor();
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: cor9,
                  ),
                )
              ),
            ]
          ),
          
        ],
      )
    );
  }
}
