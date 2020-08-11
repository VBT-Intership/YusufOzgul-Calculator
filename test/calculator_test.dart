import 'package:test/test.dart';
import '../bin/calculator.dart';

void main() {
  group("Toplama İşlemi Unit Test:", () {
    test('Pozitif tam sayı toplama işlemi', () {
      var calculator = Plus();
      var result = calculator.calculate(1, 2);
      expect(result, 3);
    });

    test('Negatif ve pozitif tam sayı toplama işlemi', () {
      var calculator = Plus();
      var result = calculator.calculate(-1, 2);
      expect(result, 1);
    });

    test('Negatif ve pozitif ondalık sayı toplama işlemi', () {
      var calculator = Plus();
      var result = calculator.calculate(-1.1, 2.1);
      expect(result, 1);
    });

    test('pozitif ondalık sayı toplama işlemi', () {
      var calculator = Plus();
      var result = calculator.calculate(1.1, 2.1);
      expect(result, 3.2);
    });
  });

  group("Çıkarma İşlemi Unit Test:", () {
    test('Pozitif tam sayı çıkarma işlemi', () {
      var calculator = Minus();
      var result = calculator.calculate(1, 2);
      expect(result, -1);
    });

    test('Negatif ve pozitif tam sayı çıkarma işlemi', () {
      var calculator = Minus();
      var result = calculator.calculate(-1, 2);
      expect(result, -3);
    });

    test('Negatif ve pozitif ondalık sayı çıkarma işlemi', () {
      var calculator = Minus();
      var result = calculator.calculate(-1.1, 2.1);
      expect(result, -3.2);
    });

    test('pozitif ondalık sayı çıkarma işlemi', () {
      var calculator = Minus();
      var result = calculator.calculate(1.1, 2.1);
      expect(result, -1);
    });
  });

  group("Çarpma İşlemi Unit Test:", () {
    test('Pozitif tam sayı çarpma işlemi', () {
      var calculator = Multiply();
      var result = calculator.calculate(1, 2);
      expect(result, 2);
    });

    test('Negatif ve pozitif tam sayı çarpma işlemi', () {
      var calculator = Multiply();
      var result = calculator.calculate(-1, 2);
      expect(result, -2);
    });

    test('Negatif ve pozitif ondalık sayı çarpma işlemi', () {
      var calculator = Multiply();
      var result = calculator.calculate(-1.5, 2.5);
      expect(result, -3.75);
    });

    test('pozitif ondalık sayı çarpma işlemi', () {
      var calculator = Multiply();
      var result = calculator.calculate(1.1, 2.5);
      expect(result, 2.75);
    });
  });

  group("Bölme İşlemi Unit Test:", () {
    test('Pozitif tam sayı bölme işlemi', () {
      var calculator = Divided();
      var result = calculator.calculate(1, 2);
      expect(result, 0.5);
    });

    test('Negatif ve pozitif tam sayı bölme işlemi', () {
      var calculator = Divided();
      var result = calculator.calculate(-1, 2);
      expect(result, -0.5);
    });

    test('Negatif ve pozitif ondalık sayı bölme işlemi', () {
      var calculator = Divided();
      var result = calculator.calculate(-1.1, 2);
      expect(result, -0.55);
    });

    test('pozitif ondalık sayı bölme işlemi', () {
      var calculator = Divided();
      var result = calculator.calculate(1.5, 2.5);
      expect(result, 0.6);
    });

    test('pozitif ondalık sayı sıfıra bölme işlemi', () {
      var calculator = Divided();
      var result = calculator.calculate(1.1, 0);
      expect(result, null);
    });
    test('sıfırı sıfıra bölme işlemi', () {
      var calculator = Divided();
      var result = calculator.calculate(0, 0);
      expect(result, null);
    });
  });
}
