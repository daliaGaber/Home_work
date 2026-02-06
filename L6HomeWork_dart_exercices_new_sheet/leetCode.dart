/**
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct. */

void main() {
  List<int> numbers = [6, 5, 3, 7];
  bool multiAppears = containsDuplicate(numbers);
  print(multiAppears);
}

bool containsDuplicate(List<int> nums) {
  Map<int, dynamic> itemCount = {};
  for (var item in nums) {
    if (itemCount.containsKey(item)) {
      itemCount[item] = itemCount[item]! + 1;
    } else {
      itemCount[item] = 1;
    }
  }
  print(itemCount);
  var appears = 1;

  for (var entry in itemCount.entries) {
    if (entry.value > appears) {
      appears += 1;
    }
  }
  if (appears == 1) {
    return false;
  } else {
    return true;
  }
}
