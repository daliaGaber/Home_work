/**
 Question 16
Write a Dart program that evaluates three integer variables with different logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on
one of the expressions.
 */

void main() {
  int x = 7;
  int y = 8;
  int z = 9;
  bool comparison1 = (x > y) || (y > x);
  bool comparison2 = (z > y) && (z > x);
  print('Comparison1 = $comparison1');
  print('Comparison2 = $comparison2');
  if (comparison1) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
