import 'dart:io';
import 'dart:math';

add() {
  print('Enter the first number:');
  int num1 = stdin.readByteSync();
  print('Enter the second number:');
  int num2 = stdin.readByteSync();

  int sum = num1 + num2;
  print(sum);
}

loopUsingFor() {
  int number = 1;
  for (number; number < 10; number++) {
    print(number);
  }
}

statement() {
  String? carModel = stdin.readLineSync();

  switch (carModel) {
    case 'BMW M3':
      print('Worndeful drifter!!');
      break;
    case 'Lexus 570':
      print("That's class!!");
      break;
    case 'Ram Megacab 3500':
      print("Thas a big boy truck!!");
      break;
    case 'Mercedes Maybach GLS':
      print("Who doesn't love their mama!!");
      break;
    default:
      print('You lack taste');
  }
}

loop() {
  int num = 20;
  while (num >= 10) {
    print(num);
    num--;
  }
}

oddOReven() {
  print('Enter number to determine whether odd or even:');
  int unknown = stdin.readByteSync();

  if (unknown % 2 == 0) {
    print('The number is even!!');
  } else {
    print('The number is odd!!!');
  }
}

largest() {
  print('Enter a list of numbers separated by spaces:');
  String input = stdin.readLineSync()!;
  List<String> numberStrings = input.split(' ');

  List<int> numbers = numberStrings.map((str) => int.parse(str)).toList();

  int largest = numbers[0];

  for (var i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }

  print('The largest number is $largest!');
}

errorCatching() {
  try {
    double result = sqrt(-1);
    print(result);
  } catch (e) {
    print('The error is $e');
  }
}

void main() {
  add();
  loopUsingFor();
  statement();
  loop();
  oddOReven();
  largest();
  errorCatching();
}
