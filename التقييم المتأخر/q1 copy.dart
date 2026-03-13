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
import 'q1Vehical.dart';

void main() {
  List<Vehicle> vehicles = [Truck("Heavy Truck", 2.0, 100), Car("Small Car", 0.5, true)];
  List<double> tripDistances = [50, 100];
  double tankLimit = 150.0;
  for (var v in vehicles) {
    double totalNeeded = 0;
    for (var d in tripDistances) {
      totalNeeded += v.calculateFuel(d);
    }
    print('${v.carName} need ${totalNeeded.toStringAsFixed(2)} ');
    if (totalNeeded > tankLimit) {
      print('${v.carName} cannot complete the trip');
    }
  }
}
