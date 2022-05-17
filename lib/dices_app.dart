import 'package:flutter/material.dart';

class DicesApp extends StatelessWidget {
  const DicesApp({Key? key}) : super(key: key);

  void _leftDicePressed() {
    debugPrint('Left Dice Pressed');
  }

  void _rightDicePressed() {
    debugPrint('Right Dice Pressed');
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
                  onPressed: _leftDicePressed,
                  child: const Image(
                    image: AssetImage('assets/images/dice2.png'),
                  ),
                ),
              ),
              Expanded(
                flex: 50,
                child: TextButton(
                  onPressed: _rightDicePressed,
                  child: const Image(
                    image: AssetImage('assets/images/dice5.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
