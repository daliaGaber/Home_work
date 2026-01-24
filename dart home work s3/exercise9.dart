/**Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double. */

void main() {
  Map<String, dynamic> student1 = {'Ahmed': 3};
  Map<String, dynamic> student2 = {'Mohamed': 3.4};
  List<Map<String, dynamic>> students = [student1, student2];
  print(students[1]['Mohamed']);
  //dynamic sum = students[0]['Ahmed'] + students[1]['Mohamed'];
  //print(sum);
  num sum = students[0]['Ahmed'] + students[1]['Mohamed'];
  //double average = (sum as num) / students.length;
  double average = sum  / students.length;
  print('The average of Grades is $average');
}
