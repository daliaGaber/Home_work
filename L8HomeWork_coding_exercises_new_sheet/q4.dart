/**
 Q4
Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.
 */

import 'q4Product.dart';

void main() {
  Product product1 = Product();
  product1.name = 'product1';
  product1.price = 100;
  print('${product1.name} is original price ${product1.price}, and the price after discounted is ${product1.discountedPrice()}');
}
