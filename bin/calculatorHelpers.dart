import 'dart:io';

enum CalculatorOperands { plus, minus, divided, multiply }

class CalculatorHelp {
  helper() {
    print("Calculator Usage: dart bin/main.dart [num] [sign] [num]\n");
    print("Signs [+]  [-]  [*]  [/]");
    print("\n\n");
    print("sample: dart bin/main.dart 12 + 15");
    print("");
    print("=_________________");
    print("\t27");
  }
}

class CalculatorFormatter {
  resultFormatter(double result) {
    if (result != null) {
      print("");
      print("=_________________");

      if (result == result.toInt()) {
        var value = result.toInt();
        print("\t$value");
      } else {
        print("\t$result");
      }
    } else {
      print("Some Error");
      exit(1);
    }
  }

  getFirstValue(List<String> args) {
    _controlArguments(args);
    return _convertToDouble(args[0]);
  }

  getSecondValue(List<String> args) {
    _controlArguments(args);
    return _convertToDouble(args[2]);
  }

  CalculatorOperands getOperator(List<String> args) {
    _controlArguments(args);
    if (args[1] == "+") {
      return CalculatorOperands.plus;
    } else if (args[1] == "-") {
      return CalculatorOperands.minus;
    } else if (args[1] == "x" || args[1] == "*") {
      return CalculatorOperands.multiply;
    } else if (args[1] == "/") {
      return CalculatorOperands.divided;
    } else {
      CalculatorHelp().helper();
      exit(1);
    }
  }

  _controlArguments(List<String> args) {
    if (args.length != 3) {
      CalculatorHelp().helper();
      exit(1);
    }
  }

  _convertToDouble(String arg) {
    try {
      return double.parse(arg);
    } catch (error) {
      print(error);
    }
  }
}