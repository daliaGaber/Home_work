/**
 Q7
Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.
 */
import 'dart:io';

void main() {
  print('Enter a list of integers');
  List<int> numbers = [];
  for (int i = 0; i < 5; i++) {
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  int largestNumber = numbers[0];
  int smallestNumber = numbers[0];
  for (var number in numbers) {
    if (number < smallestNumber) {
      smallestNumber = number;
    }
    if (number > largestNumber) {
      largestNumber = number;
    }
  }
  int difference = largestNumber - smallestNumber;
  print(
    'the largest number is $largestNumber and the smallest number is $smallestNumber and their difference is $difference',
  );
  int average = 0;
  List<int> oddNumbers = [];
  List<int> evenNumbers = [];
  for (var item in numbers) {
    average += item;
    if (item % 2 == 0) {
      evenNumbers.add(item);
    } else {
      oddNumbers.add(item);
    }
  }
  for (int n = 0; n < numbers.length; n++) {
    if (numbers[n] > average) {
      print('${numbers[n]} is above the average');
    }
  }
  print('the number of Odd numbers is ${oddNumbers.length}');
  print('the number of Even numbers is ${evenNumbers.length}');
}
