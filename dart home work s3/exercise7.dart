/**Exercise 7:
7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
b) Convert it to a Set to remove duplicates and print it.
c) Use add(), remove(), and contains() with the set, printing each result. */

void main() {
  List<int> numbers = [4, 4, 5, 6, 6, 7];
  Set<int> number = numbers.toSet();
  print(number);
  number.add(9);
  print(number);
  number.remove(7);
  print(number);
  print(number.contains(11));
}
