import 'dart:io';
import 'dart:math';

void main() {

  guessNumberGame();
  

  calculatorWithHistory();
  

  textAnalyzer();
}


void guessNumberGame() {
  print("=== Угадай число ===");
  Random random = Random();
  int number = random.nextInt(100) + 1;
  int attempts = 0;
  
  while (true) {
    stdout.write("Введите число: ");
    String input = stdin.readLineSync()!;
    int guess = int.parse(input);
    attempts++;
    
    if (guess < number) {
      print("Больше");
    } else if (guess > number) {
      print("Меньше");
    } else {
      print("Угадал за $attempts попыток!");
      break;
    }
  }
}


void calculatorWithHistory() {
  print("\n=== Калькулятор ===");
  List<String> history = [];
  
  while (true) {
    stdout.write("Первое число: ");
    double a = double.parse(stdin.readLineSync()!);
    
    stdout.write("Оператор (+, -, *, /): ");
    String op = stdin.readLineSync()!;
    
    stdout.write("Второе число: ");
    double b = double.parse(stdin.readLineSync()!);
    
    double result;
    if (op == "+") result = a + b;
    else if (op == "-") result = a - b;
    else if (op == "*") result = a * b;
    else result = a / b;
    
    String operation = "$a $op $b = $result";
    print("Результат: $operation");
    history.add(operation);
    
    print("История: $history");
    
    stdout.write("Продолжить? (да/нет): ");
    String answer = stdin.readLineSync()!;
    if (answer != "да") break;
  }
}

void textAnalyzer() {
  print("\n=== Анализатор текста ===");
  stdout.write("Введите текст: ");
  String text = stdin.readLineSync()!;
  

  print("Символов: ${text.length}");
  

  List<String> words = text.split(" ");
  print("Слов: ${words.length}");
  

  List<String> sentences = text.split(RegExp(r'[.!?]'));
  print("Предложений: ${sentences.length}");
  

  Map<String, int> frequency = {};
  for (String word in words) {
    frequency[word] = (frequency[word] ?? 0) + 1;
  }
  
  print("Частота слов: $frequency");
}
