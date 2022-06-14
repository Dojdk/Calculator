import 'package:flutter/material.dart';

import 'logic.dart';

class Button extends StatelessWidget {
  final String text;
  final Function state;

  const Button(this.text,this.state);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 30),
          primary: const Color.fromARGB(255, 17, 17, 17),
        ),
        onPressed: () {
          var x = Logic(text);
          x.add();
          state();
        },
        child: Text(text),
      ),
    );
  }
}
