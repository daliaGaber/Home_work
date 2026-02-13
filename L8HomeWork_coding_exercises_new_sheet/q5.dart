/**
 Q5
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
 */
import 'q5Book.dart';

void main() {
  Book book1 = Book();
  book1.setTitle('Book1');
  book1.setPages(500);
  print('The book title is ${book1.getTitle()} and its estimated reading time is ${book1.readingTime}');
}
