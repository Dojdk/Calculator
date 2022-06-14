import 'package:flutter/material.dart';

class TextResult extends StatelessWidget {
  final String text;

  const TextResult(this.text);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text(
          text,
          style: const TextStyle(fontSize: 50,color: Colors.white),
        ),
      ),
    );
  }
}
