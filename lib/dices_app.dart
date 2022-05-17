import 'dart:math';

import 'package:flutter/material.dart';

class DicesApp extends StatefulWidget {
  @override
  State<DicesApp> createState() => _DicesAppState();
}

class _DicesAppState extends State<DicesApp> {
  final random = Random();
  int leftDieNumber = 1;
  int rightDieNumber = 1;

  void _leftDiePressed() {
    if (leftDieNumber < 6) {
      setState(() => leftDieNumber++);
    } else {
      leftDieNumber = 1;
      setState(() => leftDieNumber);
    }
  }

  void _rightDiePressed() {
    rightDieNumber = random.nextInt(6) + 1;
    setState(() => rightDieNumber);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rolando Dados'),
        ),
        backgroundColor: Colors.blue,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 50,
                child: TextButton(
                  onPressed: _leftDiePressed,
                  child: Image.asset('assets/images/dice${leftDieNumber}.png'),
                ),
              ),
              Expanded(
                flex: 50,
                child: TextButton(
                  onPressed: _rightDiePressed,
                  child: Image.asset('assets/images/dice${rightDieNumber}.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
