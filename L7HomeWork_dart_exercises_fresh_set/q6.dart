/**
 Q6 Create a class NumberCheck with an attribute value. Add a method isEven() that returns true if
the number is even, false otherwise. In main(), test the method with one number.
 */

void main() {
  NumberCheck number1 = NumberCheck();
  number1.value = 11;
  print('if ${number1.value} is even ? ${number1.isEven()}');
}

class NumberCheck {
  int? value;
  bool isEven() {
    if (value! % 2 == 0) {
      return true;
    } else {
      return false;
    }
  }
}
