/**Question 5
What is the difference between var and dynamic in Dart? Provide an example of
each. */

/* var :- I don't need to specify the value type; once I assign a value,
 its type is automatically determined. However,
 I can't input more than one value of different types,
 It will result in an error  */

/* dynamic :- It's similar to a 'var' , but the difference is that
  I can input values of different types than the first value assigned to it
   without an error
   This is because its type is updated according to each
   value of a different type than the one it initially received */

// example of var and dynamic

void main() {
  var x = 5;
  x = 'alex';
  print(x);

  dynamic y = 'alex';
  print(y);
  y = 23;
  print(y);
}
