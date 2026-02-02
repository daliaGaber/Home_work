/**
 Q1. Sum, Average & Compare - Ask the user for three numbers. - Print their sum and average.
Then, check if the average is greater than 50 or not.
 */
import 'dart:io';

void main() {
  print('Enter the first Number');
  int x = int.parse(stdin.readLineSync()!);
  print('Enter the second Number');
  int y = int.parse(stdin.readLineSync()!);
  print('Enter the third Number');
  int z = int.parse(stdin.readLineSync()!);
  int sum = x + y + z;
  print('The Sum = $sum');
  num average = sum / 3;
  print('The Average = $average');
  bool checkAverage = average > 50;
  print('Is the Average greater than 50 ? $checkAverage');
}
