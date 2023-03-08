import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 2;
  int rightDiceNumber = 2;
  void rand(){
    leftDiceNumber = Random().nextInt(6)+1;
    rightDiceNumber = Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    rand();
                  });
                },
                child: Image(
                  image: AssetImage('assets/images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
          ),

          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    rand();
                  });
                },
                child: Image(
                  image: AssetImage('assets/images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
