import 'dart:io';

class CalculatorInterface {
  double calculate(double value1, double value2) {}
}

class Plus implements CalculatorInterface {
  double calculate(double value1, double value2) {
    return value1 + value2;
  }
}

class Minus implements CalculatorInterface {
  double calculate(double value1, double value2) {
    return value1 - value2;
  }
}

class Divided implements CalculatorInterface {
  double calculate(double value1, double value2) {
    try {
      value1 ~/ value2; // try zero division error
      return value1 / value2;
    } catch (error) {
      print(error);
      exit(1);
    }
  }
}

class Multiply implements CalculatorInterface {
  double calculate(double value1, double value2) {
    return value1 * value2;
  }
}