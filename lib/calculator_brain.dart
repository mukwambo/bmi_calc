import 'dart:math';

class CalculatorBrain {
  final int weight;
  final int height;
  late double _bmi;

  CalculatorBrain({
    required this.weight,
    required this.height,
  });

  // This method calculates the BMI and returns a string with one decimal place
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  // Get the result of the calculation and assign a comment to it
  String bmiResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  // Advice the user accordingly as per the result
  String bmiAdvice() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight, try eat a little more';
    }
  }
}
