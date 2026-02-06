/**
 Q2. Class with Constructor - Create a class Car with attributes brand and year. - Add a constructor
to set the values when creating the object. - In main(), create two car objects with different data and
print their details.
 */

void main() {
  Car car1 = Car('brand 1', 2001);
  Car car2 = Car('brand 2', 2002);
  print(car1.brand);
  print(car1.year);
  print(car2.brand);
  print(car2.year);
}

class Car {
  String? brand;
  int? year;
  Car(String brand, int year) {
    this.brand = brand;
    this.year = year;
  }
}
