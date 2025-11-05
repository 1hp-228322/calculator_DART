import 'dart:math';
import 'dart:io';

void main() {
  bool parity;
  stdout.write('Введите число ');
  int? number = int.tryParse(stdin.readLineSync() ?? '0');

    if (number == null) {
    print('Ошибка: введены некорректные числа ');
    return;
  }
  else{
    if (number % 2 == 0){
      parity = true;
    }
    else{
      parity = false;
    }
  }

  if (parity == true){
    stdout.write('Число является чётным ');
  }
  else{
    stdout.write('Число является нечётным ');
  }
}
