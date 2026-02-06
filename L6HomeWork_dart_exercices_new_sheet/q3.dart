/**
 Q3. Modify Attributes - Create a class Person with attributes name and age. - Create an object and
set its initial values using a constructor. - Then change the age of the object and print the updated
details.
 */

void main() {
  Person dalia = Person(name: 'dalia', age: 23);
  dalia.age = 24;
  print(dalia.age);
}

class Person {
  String? name;
  int? age;
  Person({String? name, int? age}) {
    this.name = name;
    this.age = age;
  }
}
