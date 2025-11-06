import 'dart:io';
import 'dart:math';

void main() {
  // 1. Игра «Угадай число»
  guessNumberGame();
  
  // 2. Калькулятор с историей
  calculatorWithHistory();
  
  // 3. Анализатор текста
  textAnalyzer();
}

// 1. Игра «Угадай число»
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

// 2. Калькулятор с историей
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

// 3. Анализатор текста
void textAnalyzer() {
  print("\n=== Анализатор текста ===");
  stdout.write("Введите текст: ");
  String text = stdin.readLineSync()!;
  
  // Количество символов
  print("Символов: ${text.length}");
  
  // Количество слов
  List<String> words = text.split(" ");
  print("Слов: ${words.length}");
  
  // Количество предложений
  List<String> sentences = text.split(RegExp(r'[.!?]'));
  print("Предложений: ${sentences.length}");
  
  // Частота слов
  Map<String, int> frequency = {};
  for (String word in words) {
    frequency[word] = (frequency[word] ?? 0) + 1;
  }
  
  print("Частота слов: $frequency");
}
