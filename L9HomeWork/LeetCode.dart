/**
  Given a non-empty array of integers nums,
  every element appears twice except for one.
  Find that single one.
  You must implement a solution with a linear runtime complexity 
  and use only constant extra space
  */

void main() {
  print(singleNumber([8, 8, 9, 9, 6]));
}

int singleNumber(List<int> nums) {
  int result = 0;
  for (var number in nums) {
    result ^= number;
  }
  return result;
}
