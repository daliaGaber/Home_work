import '../L6HomeWork_dart_exercices_new_sheet/q2.dart';

/**
 Q2
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names 
and years less than 1886 (first car invention).
- Add getters for both.- In main(), demonstrate creating two car objects 
(one valid, one invalid input).
 */

import 'q2Car.dart';

void main() {
  car car1 = car();
  car1.brand = 'car';
  car1.year = 2000;

  car car2 = car();
  car1.brand = '';
  car1.year = 1234;

  print('Car 1 brand is ${car1.brand}, and year ${car1.year}');
  print('Car 2 brand is ${car2.brand}, and year ${car2.year}');
}
