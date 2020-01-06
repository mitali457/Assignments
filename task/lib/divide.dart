void main() {
  var num1 = 30, num2 = 0;
  int output;
  try {
    output = (num1 ~/ num2);
    print('Result: $output');
  } catch (ArithmeticException) {
    print('You Should not divide a number by zero');
  }
}
