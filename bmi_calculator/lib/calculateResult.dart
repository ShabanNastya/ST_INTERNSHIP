import 'dart:math';

class CalculateResult {
  final double height;
  final double weight;
  double result;
  String status = "Normal";

  CalculateResult(
      {required this.height,
      required this.weight,
      required this.result,
      required this.status});

  String calculateResult() {
    result = weight / pow(height / 100, 2);
    return result.toStringAsFixed(1);
  }

  String getDescription() {
    if (result >= 25) {
      status = 'Overweight';
      return 'You have a higher than normal body weight';
    } else if (result >= 18.5) {
      status = 'Normal';
      return 'You have a normal body weight';
    } else {
      status = 'Underweight';
      return 'You have a body weight deficit';
    }
  }
}
