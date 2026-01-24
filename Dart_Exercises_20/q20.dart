/**
 Question 20
Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.
 */

import 'dart:io';

void main() {
  print('Enter your age');
  String parent = '';
  String input = stdin.readLineSync()!;
  int age = int.tryParse(input)!;
  if (age < 18) {
    print('Do you have a parent? Write Yes or No');
    parent = stdin.readLineSync()!;

    switch (parent) {
      case 'Yes':
        print('has parent and pass');
        break;
      case 'No':
        print("doesn't has parent and doesn't pass");
        break;
      default:
        print("Invalid, Write Yes or No");
    }
  } else {
    print('Pass');
  }
}
