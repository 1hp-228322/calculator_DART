import 'dart:math';
import 'dart:io';

void main() {
  stdout.write('Введите строку ');
  String text = stdin.readLineSync() ?? ' ';

  stdout.write('Введите подстроку ');
  String text1 = stdin.readLineSync() ?? ' ';

  bool contain = text.contains(text1);

  stdout.write('Содержится ли данная подстрока в данной строке: $contain');
}
