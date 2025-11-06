import 'dart:math';
import 'dart:io';

void main() {
  stdout.write('Введите строку ');
  String text = stdin.readLineSync() ?? ' ';
  int length = text.length;
  print('Длина строки: $length символов');
}
