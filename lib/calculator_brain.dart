import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  double _bmi;

  CalculatorBrain({this.height, this.weight}) {
    _bmi = weight / pow(height, 2) * 703;
  }

  String calculateBMI() {
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'Great News! Normal body weight.';
    } else {
      return 'Lower than normal body weight. Try to eat more.';
    }
  }
}
