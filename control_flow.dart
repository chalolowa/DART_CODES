import 'dart:io';

void main() {
  print("Enter a number");
  String? input = stdin.readLineSync();

  int number = int.parse(input!);

  try {
    if (number > 10) {
      print("Your number is greater than 10");
    } else if (number < 10) {
      print("Your number is less than 10");
    } else {
      print("Your number is equal to 10");
    }
  } catch (e) {
    print("You entered an invalid number!!!");
  }
}
