import 'package:flutter/material.dart';

void main() => runApp(MyCalcApp());

class MyCalcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Calculator',
        home: MyCalculator()
    );
  }
}

class MyCalculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Calculator();
}

class Calculator extends State<MyCalculator> {

  // Register Controller for text view
  final controllerNumberA = TextEditingController();
  final controllerNumberB = TextEditingController();
  final myFormKey = GlobalKey<FormState>();

  String textResult="0 + 0 = 0";
  String operator="+";

  //Create function add
  void add() {
    if (myFormKey.currentState.validate()) {
      int numberA = int.parse(controllerNumberA.text);
      int numberB = int.parse(controllerNumberB.text);
      int result = numberA + numberB;

      setState(() {
        textResult = "$numberA + $numberB = $result";
      });
    }
  }

  //Create function subtract
  void subtract() {
    if (myFormKey.currentState.validate()) {
      int numberA = int.parse(controllerNumberA.text);
      int numberB = int.parse(controllerNumberB.text);
      int result = numberA - numberB;

      setState(() {
        textResult = "$numberA - $numberB = $result";
      });
    }
  }

  //Create function multiply
  void multiply() {
    if (myFormKey.currentState.validate()) {
      int numberA = int.parse(controllerNumberA.text);
      int numberB = int.parse(controllerNumberB.text);
      int result = numberA * numberB;

      setState(() {
        textResult = "$numberA * $numberB = $result";
      });
    }
  }

  //Create function divide
  void divide() {
    if (myFormKey.currentState.validate()) {
      int numberA = int.parse(controllerNumberA.text);
      int numberB = int.parse(controllerNumberB.text);
      double result = numberA / numberB;

      setState(() {
        textResult = "$numberA / $numberB = $result";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: Form(key: myFormKey, child:
    Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextFormField(
            controller: controllerNumberA,
            validator: (value) {
              if (value.isEmpty)
                return "Please enter number";
            },
            decoration: InputDecoration(hintText: "Enter: "),
            keyboardType: TextInputType.number),
        TextFormField(
            controller: controllerNumberB,
            validator: (value) {
              if (value.isEmpty)
                return "Please enter number";
            },
            decoration: InputDecoration(hintText: "Enter: "),
            keyboardType: TextInputType.number),


        // Create results text field
        Text(textResult, style: TextStyle(fontSize: 20.0),),
        //Create 4 button in 1 row
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          RaisedButton(onPressed: add, child: Text('+'),),
          RaisedButton(onPressed: subtract, child: Text('-'),),
          RaisedButton(onPressed: multiply, child: Text('*'),),
          RaisedButton(onPressed: divide, child: Text('/'),),
        ],)
      ],)));
  }

}
