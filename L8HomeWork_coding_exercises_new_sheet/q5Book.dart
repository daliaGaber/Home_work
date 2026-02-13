/**
 Q5
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
 */

class Book {
  String? _title;
  int? _pages;

  void setTitle(String title) {
    if (title.isNotEmpty) {
      this._title = title;
    }
  }

  void setPages(int pages) {
    if (pages > 0) {
      this._pages = pages;
    }
  }

  String getTitle() {
    return this._title!;
  }

  int getPages() {
    return this._pages!;
  }

  int get readingTime => 2 * this._pages!;
}
