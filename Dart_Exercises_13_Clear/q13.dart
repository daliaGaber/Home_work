/**
 Q13
Create a program with the list of names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. Count how many times
each name appears. Print only the names that appear more than once.
 */

void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  List<String> appear = [];
  

  for (var item in names) {
    if (appear.contains(item)) {
      continue;
    }
    int count = 0;
    for (var name in names) {
      if (name == item) {
        count++;
      }
    }
   
    if (count > 1) {
      print('The name $item is Appears $count times');
    
    }
    appear.add(item);
  }

}
