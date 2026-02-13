/**
 Q1
Create a class BankAccount with a private field _balance.
- Add a getter balance that returns the balance.
- Add a setter balance that prevents setting it to 
a negative value (print 'Invalid balance' if attempted).
- In main(), demonstrate creating an account, updating the balance,
 and trying to set a negative balance.
 */

import 'q1BankAccount.dart';

void main() {
  bankAccount account1 = bankAccount();
  account1.balance = 100;
  print(account1.balance);
  account1.balance = -500;
}
