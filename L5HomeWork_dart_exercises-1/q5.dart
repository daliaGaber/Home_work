/**
 Q5. Multiplication Table with Sum - Ask the user for a number. - Print its multiplication table up to
10, then calculate the sum of all results.
 */
import 'dart:io';

void main() {
  print("Enter a Number to see It 's multiplication table up to 10");
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    int mul = number * i;
    print('$number * $i = $mul');
    sum = sum + mul;
  }
  print('Tthe sum of all results $sum');
}
