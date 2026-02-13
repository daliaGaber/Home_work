/**
 Q2
Create a class Car with private fields _brand and _year.
- Add setters that reject empty brand names 
and years less than 1886 (first car invention).
- Add getters for both.- In main(), demonstrate creating two car objects 
(one valid, one invalid input).
 */

class car {
  String? _brand;
  int _year = 1886;
  set brand(String brand) {
    if (brand != '') {
      this._brand = brand;
    }
  }

  set year(int year) {
    if (year > 1886) {
      this._year = year;
    }
  }

  String get brand => this._brand!;
  int getYear() {
    return this._year;
  }
}
