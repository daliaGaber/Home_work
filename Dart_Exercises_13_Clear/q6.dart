/**
 Q6
Create a program that calculates the factorial of 6 and prints the result.
 */

void main() {
  int number;
  int factorial = 1;
  for (number = 6; number > 0; number--) {
    factorial *= number;
  }
  print('The factorial of 6 is $factorial');
}
