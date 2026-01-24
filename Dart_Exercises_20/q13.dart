/**
 Question 13
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. Then use a switch
statement to print a message for each grade.
 */
import 'dart:io';

void main() {
  print('Enter your grad');
  String number = stdin.readLineSync() ?? '0';
  int numbers = int.tryParse(number)!;
  String result ='';
  if (numbers <= 100 && numbers >= 0) {
    if (numbers <= 100 && numbers >= 90) {
      result = 'A';
      print('Your Grad is A');
    } else if (numbers < 90 && numbers <= 80) {
      result = 'B';
      print('Your Grad is B');
    } else if (numbers < 80 && numbers <= 70) {
      result = 'C';
      print('Your Grad is C');
    } else if (numbers < 70 && numbers <= 60) {
      result = 'D';
      print('Your Grad is D');
    } else {
      print('You are Failed');
    }
  } else {
    print('Enter number between 0:100');
  }
  switch (result!) {
    case 'A':
      print('You are Excellent');
      break;
    case 'B':
      print('You are Very Good');
      break;
    case 'C':
      print('You are Good');
      break;
    case 'D':
      print('You are Poor');
      break;
    default:
      print('You are Failed');
  }
}
