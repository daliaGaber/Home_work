/**
 Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the result is a single digit.
Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)
 */
import 'dart:io';

void main() {
  print('Enter a Number');
  int number = int.parse(stdin.readLineSync()!);
  List<String> numbers = number.toString().split('');
  int intNumber;
  List<int> intNumbers = [];
  for (var item in numbers) {
    intNumber = int.parse(item);
    intNumbers.add(intNumber);
  }
  print(intNumbers);
  int sum = 0;
  for (var i in intNumbers) {
    if (intNumbers.length > 1 && intNumbers.length != 0) {
      sum = sum + i;
    } 
  }
  print(sum);
}
