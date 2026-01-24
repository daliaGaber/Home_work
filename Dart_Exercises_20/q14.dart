/**
 Question 14
Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.
 */

void main() {
  List<int> numbers = [1, 9, 7, 5, 4];
  int sum;
  if (numbers != null || numbers.length == 0) {
    sum = numbers[0] + (numbers.length - 1);
    print(sum);
    if (sum >= 40) {
      print('sum >= 40');
    }else{
      print('sum < 40');
    }
  } else {
    print('No scores');
  }
}
