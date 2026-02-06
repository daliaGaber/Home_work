/**
 Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list. - Print the largest
number and the second largest number (without sorting the list).
 */
import 'dart:io';

void main() {
  List<int> numbers = [];
  print('Enter 6 numbers in a List');
  for (int i = 0; i < 6; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int larg = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > larg) {
      larg = numbers[i];
    }
  }
  print('The largest number is $larg');
  numbers.remove(larg);
  int secondLarg = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > secondLarg) {
      secondLarg = numbers[i];
    }
  }
  numbers.add(larg);
  print('The second largest number is $secondLarg');
}
