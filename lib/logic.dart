import 'package:math_expressions/math_expressions.dart';
var array = [];

class Logic {
  final String text;
  Logic.empty() : text = '';
  Logic(this.text);

  void add() {
    array.add(text);
  }
  void clear() {
    array = [];
  }
  void remove() {
    if (array.isNotEmpty) {
      array.removeLast();
    }
  }
  String returnArray() {
    return array.join('');
  }
  void returnResult(){
    String x=returnArray();
    x=x.replaceAll('×', '*');
    x=x.replaceAll('÷', '/');
    Parser p = Parser();
    Expression exp = p.parse(x);
    ContextModel cm = ContextModel();
    double res=exp.evaluate(EvaluationType.REAL,cm);
    array=[res.toString()];
  }
}
