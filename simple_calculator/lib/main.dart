import 'package:flutter/material.dart';

void main() {
  runApp(MyCalculator());
}

class MyCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' bulding a Simple Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: CalculatorHomePage(),
    );
  }
}

class CalculatorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Calculator'),
      ),
      body: Calculator(),
    );
  }
}

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                '0',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton('7', isOperator: false),
              CalculatorButton('8', isOperator: false),
              CalculatorButton('9', isOperator: false),
              CalculatorButton('/', isOperator: true),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton('4', isOperator: false),
              CalculatorButton('5', isOperator: false),
              CalculatorButton('6', isOperator: false),
              CalculatorButton('*', isOperator: true),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton('1', isOperator: false),
              CalculatorButton('2', isOperator: false),
              CalculatorButton('3', isOperator: false),
              CalculatorButton('-', isOperator: true),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CalculatorButton('0', isOperator: false),
              CalculatorButton('.', isOperator: false),
              CalculatorButton('=', isOperator: true),
              CalculatorButton('+', isOperator: true),
            ],
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String label;
  final bool isOperator;

  CalculatorButton(this.label, {required this.isOperator});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: isOperator ? Colors.orange : Colors.white, // Button color
            foregroundColor: isOperator ? Colors.white : Colors.black, // Text color
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            label,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
