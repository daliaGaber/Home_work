/**
 Q1
Create a program that removes duplicate numbers from the list [5, 3, 5, 7, 3, 9] and prints how
many unique numbers remain.
 */

void main() {
  List<int> number1 = [5, 3, 5, 7, 3, 9];
  Set<int> number2 = number1.toSet();
  int x = number2.length;
  print('unique numbers remain is $x');
}
