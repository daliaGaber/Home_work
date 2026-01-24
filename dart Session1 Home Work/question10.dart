/**Question 10
Explain what happens if you try to use a variable before it is declared in Dart. */

/** An error will occur because when the compiler executes the code,
    it compile line by line after the ' void main() ', 
    If it finds a variable on a line that it hasn't declared before,
     an error will occur, even if the variable is defined on the following line */

//example
void main() {
  print(x);
  double x = 2.4;
}
