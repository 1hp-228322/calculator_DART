import 'dart:math';
import 'dart:io';

void main() {
  stdout.write('Введите минимальное число ');
  int? min = int.tryParse(stdin.readLineSync() ?? '0');
  stdout.write('Введите максимальное число');
  int? max = int.tryParse(stdin.readLineSync() ?? '0');
    if (max == null || min == null) {
    print('Ошибка: введены некорректные числа ');
    return;
  }
  Random random = Random();
  int randomNumber =  min + random.nextInt(max - min + 1);
  stdout.write('Рандомное число: $randomNumber \n' );
}
