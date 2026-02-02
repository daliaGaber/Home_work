/**
 Q7
Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together,
and print the total.
 */

void main() {
  List<int> scores = [10, 0, 0, 20, 30];
  if (scores.contains(0)) {
    scores.remove(0);
  }
  print(scores);
  print(scores);
  int sum = 0;
  for (var item in scores) {
    sum += item;
  }
  print(sum);
}
