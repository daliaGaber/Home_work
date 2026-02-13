/**
 Q3
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results.
 */
import 'q3Grade.dart';

void main() {
  Grade student1 = Grade();
  student1.score = 50;
  print(student1.isPass());
  student1.score = 40;
  print(student1.isPass());
  student1.score = 60;
  print(student1.isPass());
}
