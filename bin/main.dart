import 'calculator.dart';
import 'calculatorHelpers.dart';
main(List<String> args) {
  var formatter = CalculatorFormatter();
  CalculatorInterface calculator;

  switch (formatter.getOperator(args)) {
    case CalculatorOperands.plus:
      calculator = Plus();
      break;
    case CalculatorOperands.minus:
      calculator = Minus();
      break;
    case CalculatorOperands.divided:
      calculator = Divided();
      break;
    case CalculatorOperands.multiply:
      calculator = Multiply();
      break;
  }
  var firstValue = formatter.getFirstValue(args);
  var secondValue = formatter.getSecondValue(args);
  if (firstValue != null && secondValue != null) {
    var result = calculator.calculate(firstValue, secondValue);
    formatter.resultFormatter(result);
  }
}