/**
  2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, 
and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order.
 */
void main() {
  Map <String, int> Pizza = {
    'Meat' : 150,
    'Chicken' : 140,
    'Cheese' : 120
  };
  Map <String, int> Drinks = {
    'Coffee' : 30,
    'Tea' : 20,
    'Nescafe' : 40
  };
  Map <String, int> Burger = {
    'Crispy' : 70,
    'Zinger' : 80,
    'Classic' : 60
  };
  List<Map> menu = [Drinks, Pizza, Burger];
  List<int> order = [
    menu[0]['Coffee'], 
    menu[1]['Chicken'], 
    menu[2]['Classic']
  ];
  double totalPrice = 0;
  for (var item in order) {
    totalPrice += item ;
  }

  print('The Total Price equal $totalPrice EGP');
}
