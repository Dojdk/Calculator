import 'package:flutter/material.dart';

import 'text.dart';
import 'controlpanel.dart';
import 'logic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var x = Logic.empty();
  String _textTR='';
  void _setst(){
    setState(() {
      _textTR=x.returnArray();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: const Color.fromARGB(255, 17, 17, 17),
        child: Table(
          children: [
            TableRow(
              children: [TextResult(_textTR)],
            ),
            TableRow(children: [
              Control(_setst),
            ])
          ],
        ),
      ),
    );
  }
}
