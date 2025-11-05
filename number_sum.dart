import 'dart:math';
import 'dart:io';

void main() {
  stdout.write('Введите минимальное число ');
  int? number = int.tryParse(stdin.readLineSync() ?? '0');
      if (number == null) {
    print('Ошибка: введено некорректное число ');
    return;
  }
  int sum = number
      .abs()
      .toString()
      .split('')
      .map((digit) => int.parse(digit))
      .reduce((a, b) => a + b);
  
  print('Сумма цифр числа $number: $sum');
}
