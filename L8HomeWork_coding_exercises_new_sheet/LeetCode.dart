/**
 Given two strings s and t, 
 return true if t is an anagram of s, 
 and false otherwise
 */

void main() {
  print(isAnagram('xcv', 'cixv'));
}

bool isAnagram(String s, String t) {
  List<String> sList = s.split('');
  List<String> tList = t.split('');
  sList.sort();
  tList.sort();
  if (sList.join() == tList.join()) {
    return true;
  } else {
    return false;
  }
}
