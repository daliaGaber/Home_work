/**Question 7
Given this code, identify any errors and explain why they occur: ```dart void main()
{ String name = "Alice"; name = 123; print(name); } ``` */

void main() {
  String name = "Alice";
  name = 123;
  print(name);
}

//The error is '''name = 123;'''

/*The error is adding an integer value to a variable
 that only holds text values.*/
