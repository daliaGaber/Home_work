/**
 Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:-
 Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type;
 specialized types must override it with their own rule.
 - In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).
 */

class Vehicle {
  String _carName = '';
  double _fuel = 0;
  set carName(String carName) {
    if (carName.isNotEmpty) {
      this._carName = carName;
    } else {
      print('error; keep previous values');
    }
  }
  String get carName => this._carName;
  set fuel(double fuel) {
    if (fuel > 0) {
      this._fuel = fuel;
    } else {
      print('error; keep previous values');
    }
  }
  double get fuel => this._fuel;
  double calculateFuel(double distance) => distance * _fuel;
}

class Car extends Vehicle {
  bool _acOn = true;
  Car(String name, double rate, this._acOn) {
    super._carName = name;
    super._fuel = rate;
  }
  @override
  double calculateFuel(double distance) {
    double fuel = super.calculateFuel(distance);
    return _acOn ? fuel * 1.2 : fuel;
  }
}

class Truck extends Vehicle {
  double _loadWeight = 0;
  Truck(String name, double rate , this._loadWeight){
    super._carName = name;
    super._fuel =rate;
  }
  @override
  double calculateFuel(double distance) {
    return super.calculateFuel(distance) + (_loadWeight * 0.5);
  }
}

