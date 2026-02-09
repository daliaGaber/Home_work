/**
Q2 Create a class Temperature with an attribute celsius. Add a method toFahrenheit() that returns
the temperature in Fahrenheit. In main(), create an object and print the converted value. 
 */

void main() {
  Temperature temperature = Temperature();
  temperature.celsius = 10;
  //double fahrenhiet =temperature.toFahrenheit();
  print('The temperature ${temperature.celsius} in celsius equal ${temperature.toFahrenheit()} in fahrenheit');
}

class Temperature {
  double? celsius;
double toFahrenheit() {
   double fahrenheit = 32 + (celsius! * 1.8);
   return fahrenheit ;
  }
}
