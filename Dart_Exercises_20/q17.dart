/**
 Question 17
Write a Dart program that formats a price tag string with a currency. Apply string methods 
such as
toString, padLeft, and length to format and compare the results.
 */

void main() {
  num price = 5;
  String tag = '\$';
  String priceTag = price.toString() + tag;
  print('the number $price means $priceTag');
  print(priceTag.padLeft(7));
  print(priceTag.length);
}
