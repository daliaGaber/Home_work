/**
 Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
courses: one with custom duration and one with the default. Print both.
 */

void main() {
  Course course1 = Course();
  Course course2 = Course();
  course1.title = 'course 1';
  course1.duration = 4;
  course2.title = 'course 2';
  print("Course 1 Duration is ${course1.duration} months ");
  print("Course 2 Duration is ${course2.duration} months ");
}

class Course {
  String? title;
  int duration = 3;
  
}
