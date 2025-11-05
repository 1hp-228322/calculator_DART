
import 'dart:io';

void main() {
  stdout.write('Введите число в градусах или фаренгейтах');
  double? number = double.tryParse(stdin.readLineSync() ?? '0');
    if (number == null) {
    print('Ошибка: введено некорректное число');
    return;
  }
  stdout.write('Выберите во что перевести (С/F)');
  String operation = stdin.readLineSync() ?? 'Неизвестно';

  double result;
  switch (operation){
    case'C':
      result = (number - 32) / 1.8;
      stdout.write('Ответ в цельсиях: $result');
      break;
    case'F':
      result = number * 1.8 + 32;
      stdout.write('Ответ в фаренгейтах: $result');
      break;

    default:
      stdout.write('Неизвестная единица измерения');
  }
  
  
}
