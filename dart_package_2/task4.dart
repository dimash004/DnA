import 'dart:io';

void main() {
  
  int count = 0;

  
  stdout.write("How many Fibonacci numbers do you want? ");
  String input = stdin.readLineSync() ?? "";
  
  
  if (input.isNotEmpty && isPositiveInteger(input)) {
    count = int.parse(input);

    
    List<int> fibonacciNumbers = generateFibonacci(count);
    print(fibonacciNumbers);
  } else {
    print("Invalid input. Please enter a positive integer.");
  }
}

bool isPositiveInteger(String input) {
  
  try {
    int number = int.parse(input);
    return number > 0;
  } catch (e) {
    return false;
  }
}

List<int> generateFibonacci(int count) {
  
  List<int> fibonacciNumbers = [1, 1];
  
  for (int i = 2; i < count; i++) {
    fibonacciNumbers.add(fibonacciNumbers[i - 1] + fibonacciNumbers[i - 2]);
  }

  return fibonacciNumbers;
}
