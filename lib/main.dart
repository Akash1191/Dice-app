
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade900,
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          title: Text(
            'Dice',
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var dicenumber = 1;

  void rollDice() {
    setState(() {
      dicenumber = Random().nextInt(6) + 1; // Generates a random number between 1 and 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green.shade900,
                  ),
                  onPressed: () {
                    rollDice();
                    print('$dicenumber button pressed');
                  },
                  child: Center(
                    child: Image(
                      image: AssetImage('images/dice$dicenumber.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add some space between the dice and the text
          Text(
            'Your value is $dicenumber',
            style: GoogleFonts.pacifico(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
