/**
 Q1 Create a class City with attributes name and population. In main(), create two city objects and
print their details.
 */

void main() {
  City alex = City('Alex', 100000);
  City cairo = City('Cairo', 200000);
  print("The name of the first city is ${alex.name} and it 's population ${alex.population}");
  print("The name of the second city is ${cairo.name} and it 's population ${cairo.population}");
}

class City {
  String? name;
  int? population;
  City(this.name, this.population) {}
}
