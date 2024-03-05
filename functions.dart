void main() {
  print(addTwo(4, 5));
  print(subtractTwo(3, 7));
  print(multiplyTwo(6, 9));
  print(divideTwo(84, 12));
  print(stringLength("LochatheDev"));
  print(getFirstElement(
      [23, "Engineer", 489, 34, "The_Dev", "Master Chief", 117]));
}

int addTwo(a, b) {
  var sum = a + b;
  return sum;
}

int subtractTwo(a, b) {
  if (a > b) {
    var result = a - b;
    return result;
  } else {
    var result = b - a;
    return result;
  }
}

int multiplyTwo(a, b) {
  var product = a * b;
  return product;
}

double divideTwo(a, b) {
  var quotient = a / b;
  return quotient;
}

int stringLength(String s) {
  return s.length;
}

T getFirstElement<T>(List) {
  return List.first;
}
