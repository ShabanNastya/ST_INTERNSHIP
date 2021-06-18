import 'dart:math';

class CalculateResult {
  final double height;
  final double weight;
  double result;

  CalculateResult(
      {required this.height, required this.weight, required this.result});

  String calculateResult() {
    result = weight / pow(height / 100, 2);
    return result.toStringAsFixed(1);
  }

  String getStatus() {
    if (result >= 25) {
      return 'Overweight';
    } else if (result >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDescription() {
    if (result >= 25) {
      return 'You have a higher than normal body weight';
    } else if (result >= 18.5) {
      return 'You have a normal body weight';
    } else {
      return 'You have a body weight deficit';
    }
  }
}
