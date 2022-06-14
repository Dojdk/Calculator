import 'package:flutter/material.dart';

import 'button.dart';
import 'instbuttons.dart';

class Control extends StatelessWidget {
  final Function state;
  const Control(this.state);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            InstrumentsButtons("AC",state),
            InstrumentsButtons("⌫",state),
            InstrumentsButtons("%",state),
            InstrumentsButtons("÷",state),
          ],
        ),
        TableRow(
          children: [
            Button("7",state),
            Button("8",state),
            Button("9",state),
            InstrumentsButtons("×",state),
          ],
        ),
        TableRow(
          children: [
            Button("4",state),
            Button("5",state),
            Button("6",state),
            InstrumentsButtons("-",state),
          ],
        ),
        TableRow(
          children: [
            Button("1",state),
            Button("2",state),
            Button("3",state),
            InstrumentsButtons("+",state),
          ],
        ),
        TableRow(
          children: [
            InstrumentsButtons("",state),
            Button("0",state),
            Button(".",state),
            InstrumentsButtons("=",state),
          ],
        ),
      ],
    );
  }
}
