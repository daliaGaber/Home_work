/**Exercise 5:
5. a) Declare two integers a and b.
b) Print outcomes of comparison operators: a == b, a != b, a > b, a < b, a >= b, a <= b.
c) Declare int sum = a + b; check if sum equals 20 and print the boolean result. */

void main() {
  int a = 10;
  int b = 8;

  bool is_A_equal_B = a == b;
  print(is_A_equal_B);

  bool is_A_not_Equal_B = a != b;
  print(is_A_not_Equal_B);

  bool is_A_greaterThan_B = a > b;
  print(is_A_greaterThan_B);

  bool is_A_smallerThan_B = a < b;
  print(is_A_smallerThan_B);

  bool is_A_greaterThanOrEqual_B = a >= b;
  print(is_A_greaterThanOrEqual_B);

  bool is_A_smallerThanOrEqual_B = a <= b;
  print(is_A_smallerThanOrEqual_B);

  int sum = a + b;
  bool sum_Equal_20 = sum == 20;
  print(sum_Equal_20);
}
