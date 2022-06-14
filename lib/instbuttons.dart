import 'package:flutter/material.dart';

import 'logic.dart';

class InstrumentsButtons extends StatelessWidget {
  final String text;
  final Function state;
  const InstrumentsButtons(this.text, this.state);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 30),
          primary: const Color.fromARGB(255, 17, 17, 17),
          onPrimary: Colors.orange,
        ),
        onPressed: () {
          if (text == 'AC') {
            var y = Logic.empty();
            y.clear();
            state();
          }
          else if (text == '⌫') {
            var y = Logic.empty();
            y.remove();
            state();
          }
          else if (text == '=') {
            var y = Logic.empty();
            y.returnResult();
            state();
            y.clear();
          } else {
            var x = Logic(text);
            x.add();
            state();
          }
        },
        child: Text(text),
      ),
    );
  }
}
