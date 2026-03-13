/**
 3. Unique Visitor Counter
You are building a mobile app that tracks unique visitors per day.
- Each visitor is identified by an ID (an integer).
- During the day, the app receives many repeated IDs (because the same user
 may open the app multiple times).
 - You need to count how many unique visitors used the app today.
Write code that, given a list of visitor IDs, returns the number of unique visitors.
 */

void main() {
  List<int> ids = [1, 9, 6, 5, 9, 1];
  print('The number of unique visitors is ${uniqueVisitors(ids)}');
}

int uniqueVisitors(List<int> visitorIds) {
  Set uniqueVisitors = visitorIds.toSet();
  return uniqueVisitors.length;
}
