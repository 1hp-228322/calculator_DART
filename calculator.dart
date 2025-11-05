import 'dart:io';

void main() {
  stdout.write('Введите первое число ');
  String number1 = stdin.readLineSync() ?? '0';
  
  stdout.write('Введите второе число ');
  String number2 = stdin.readLineSync() ?? '0';

  stdout.write('Введите операцию (* / - +) ');
  String operation = stdin.readLineSync() ?? '';
  
  double? one = double.tryParse(number1);
  double? two = double.tryParse(number2);

  if (one == null || two == null) {
    print('Ошибка: введены некорректные числа');
    return;
  }

  double result;
  switch(operation){
    case '*':
      result = one * two;
      break; 
    case '/':
      if (two == 0) {
        print('Ошибка: деление на ноль');
        return;
      }
      result = one / two;
      break;
    case '+':
      result = one + two;
      break;
    case '-':
      result = one - two;
      break;
    default:
      print('Неизвестная операция: $operation');
      return;
  }
  
  print('Результат: $result');
}
