/**
 Q4. Simple List Analyzer - Let the user enter 5 numbers into a list. - Print the largest and smallest
numbers, and then calculate the difference between them.
 */
import 'dart:io';

void main() {
  List<int> numbers = [];
  print('Enter the first number in the List');
  //int x = int.parse(stdin.readLineSync()!);
  numbers.add(int.parse(stdin.readLineSync()!));
  print('Enter the second number in the List');
  int y = int.parse(stdin.readLineSync()!);
  numbers.add(y);
  print('Enter the third number in the List');
  int z = int.parse(stdin.readLineSync()!);
  numbers.add(z);
  print('Enter the fourth number in the List');
  int a = int.parse(stdin.readLineSync()!);
  numbers.add(a);
  print('Enter the fifth number in the List');
  int b = int.parse(stdin.readLineSync()!);
  numbers.add(b);
  
}
