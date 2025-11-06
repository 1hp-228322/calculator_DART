import 'dart:math';
void main() 
{
  print("Простые операции.\n");
  print("Задание №1:\n");
  
  int num1 = 3;
  double num2 = 4.2;
  
  print("Сложение чисел = ${num1 + num2}");
  print("Вычитание чисел = ${num1 - num2}");
  print("Умножение чисел = ${num1 * num2}");
  print("Деление чисел = ${num1 / num2}");
  
  
  print("\nЗадание №2:\n");
  
  double far = 2.2;
  int cel = 5;
    
  print("Градусы фарингейта = ${(far * 1.8) + 32}");
  print("Градусы цельсия  = ${(cel - 32) / 1.8}");
  
  print("\nЗадание №3:\n");
  
  Random random = Random();
  
  int rand2 = random.nextInt(666);
  
  print("Рандомное число = ${rand2}");
  
  print("\nЗадание №4:\n");
  
  int evenNumber = 4;
  
  int oddNumber = 3;
  
  print("Являеься ли чётным число evenNumber? ${evenNumber == 4}");
  print("Являеься ли нечётным число oddNumber? ${oddNumber == 3}\n");
  print("Являеься ли нечётным число evenNumber? ${evenNumber == 3}");
  print("Являеься ли чётным число oddNumber? ${oddNumber == 4}");
    
  print("\nЗадание №5:\n");
  
   int number = 123456789;
  
   int sum1 = number
     .toString()
     .split('')
     .map((digit) => int.parse(digit))
     .reduce((a,b)  => a + b);
  
  print("Число:${number}.");
  print("Сумма цифр:${sum1}.");
  
  print("\n===========================================");
  print("\nРабота со строками.\n");  
  print("Задание №1:\n");  
  
  String str ="Здравствуйте, Сергей Михалович!";
  int sum2 = str.length;
  
  print("Текст:${str}");
  print("Сумма символов:${sum2}.");
    
  print("\nЗадание №2:\n");
  
  String text = "Здравствуйте, Сергей Михалович!";
  
  print("Текст:${text}");
  print("И сделаем проверку,если мы напишем слово 'здравствуйте' с маленькой буквы.");
  print("И вот что выведет: ${text.contains("здравствуйте")}");  
  
  print("\nЗадание №3:\n");
  
  String text2 = "Здравствуйте, Сергей Михалович!";
  String text3 = text2.replaceAll("Здравствуйте","Досвидания");
  
  print("Текст:${text2}");
  print("И сделаем замену вхождения подстроки в строку на другую строку.");
  print("И вот что выведет: ${text3}"); 
  
  print("\nЗадание №4:\n");
  
  String text4 = "Dart";
  
  String reversed = text4.split('').reversed.join('-');
  
  print("Текст:${text4}");
  print("И вот что выведет: ${reversed}"); 
  
  print("\nЗадание №5:\n");
  
  String text5 = "DART";
  
  String reversed1 = text5.toLowerCase().split('').reversed.join('+');
  
  print("Текст:${text5}");
  print("И вот что выведет: ${reversed1}"); 
  
  print("\n===========================================");
  
  print("\nРабота с коллекциями:\n");
  print("Задание №1:\n");
  
  List<int> numbers = [1,2,3,4];
  
  int maxValue = numbers.reduce((a, b) => a > b ? a : b);
  int maxValue2 = numbers.reduce((a, b) => a < b ? a : b);
  
  print("Список:${numbers}");
  
  numbers.addAll([5,6]);
  print("Добавление:${numbers}");
  
  numbers.removeAt(0);
  print("Удаление:${numbers}");
  
  print("Max:${maxValue} Min:${maxValue2}");
  
  print("\nЗадание №2:\n");
  
  List<int> list = [1,1,2,2,3,3,4,5,6,6,];
  Set<int> list2 = list.toSet();
  
  print("До:${list}");
  print("После:${list2}");
  
  print("\nЗадание №3:\n");
  
  List<String> string =["а","ы","м","б","в","г"];
  
  print("До:${string}");
  
  string.sort();
  print("После:${string}");
  
  print("\nЗадание №4:\n");
  
    Map<String, dynamic> student = {
    'Имя': 'Жириновский',
    'Возраст': 18,
    'Предмет': 'Физ-ра',
    'Оценки': [4, 5, 3, 5]
  };
  
  print(' Исходный студент: $student');
  
  student['Оценки'].add(4); 
   print('После добавления: $student');
  
  student.remove('Предмет');          
  print('После удаления: $student');
  
  print('Нахождение всех элементов:');
  student.forEach((key, value) {print('$key: $value');});
  
  print("\nЗадание №5:\n");
  
  List<int> numbers2 = [1, 2, 3, 4, 5];
  
  int sum = numbers.reduce((value, element) => value + element);
  
  print('Список: $numbers2');
  print('Сумма элементов: $sum');
  
}
