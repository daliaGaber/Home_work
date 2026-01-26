/**
 Question 10
Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.
 */

void main() {
  Map<String, dynamic> countryCodes = {
    'EG': 'Egypt',
    'SU': 'Sudan',
  };
  print(countryCodes['EG']);
  countryCodes['QA'] = 'Qatar';
  //print(countryCodes.length);
  //print(countryCodes.entries);
  print(countryCodes.entries.length);
  if (countryCodes.containsKey('JO')) {
    print('Jordan exist');
  } else {
    print('Jordan missing');
  }
}
