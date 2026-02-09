/**
 You are given an array prices where prices[i] is the price of a given stock on the ith day.

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 */

void main() {
  print(maxProfit([7, 1, 5, 3, 6, 4]));
  print(maxProfit([7, 6, 4, 3, 1]));
  print(maxProfit([7, 6,2 , 4, 3, 1]));
}

int maxProfit(List<int> prices) {
  int max = 0;
  int min = prices[0];
  int profit = 0;
  for (var price in prices) {
    if (price < min) {
      min = price;
    }
  }
  for (int i = prices.indexOf(min); i < prices.length; i++) {
    if (prices[i] > max) {
      max = prices[i];
    }
  }
  profit = max - min;
  if(profit != 0){
    return profit ;
  } else {
    return 0;
  }
}
