/**
 Question 9
Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed.
 */

void main() {
  List<int> number1 = [3, 4, 1, 3];
  Set<int> number2 = number1.toSet();
  bool removeDuplicate = number2.length < number1.length;
  print('Were duplicate items removed?  $removeDuplicate');
}
