/*  3. Library Catalog System
Create a simple library catalogue system with classes for books and library users. Users
can borrow and return books.
Following things should be covered in the program.
1. Consider fixing the number of books and users at the start of the program.
2. Simulate all possible cases by executing proper class methods. Review following
operation in sequence.
Library has 2 books and 2 users.
  1. User-1 borrowed book-1
  2. User-1 borrowed book-2
  3. User-2 borrowed book-1
  4. User-1 returns book-2
  5. Show list of books currently borrowed by each user
*/

class Book {
  String title;
  bool isBorrowed;

  Book(this.title) : isBorrowed = false;
}

class User {
  String name;
  List<Book> borrowedBooks = [];

  User(this.name);

  void borrowBook(Book book) {
    if (!book.isBorrowed) {
      borrowedBooks.add(book);
      book.isBorrowed = true;
      print('$name borrowed "${book.title}".');
    } else {
      print('Sorry, "${book.title}" is already borrowed.');
    }
  }

  void returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      borrowedBooks.remove(book);
      book.isBorrowed = false;
      print('$name returned "${book.title}".');
    } else {
      print('$name does not have "${book.title}" to return.');
    }
  }

  void listBorrowedBooks() {
    if (borrowedBooks.isEmpty) {
      print('$name has not borrowed any books.');
    } else {
      print('$name has borrowed the following books:');
      borrowedBooks.forEach((book) => print('- ${book.title}'));
    }
  }
}

void main() {
  Book book1 = Book('Rich Dad Poor Dad by Robert Kiyosaki');
  Book book2 = Book('The Secret by Rhonda Byrne');

  User user1 = User('User 1');
  User user2 = User('User 2');

  // Simulate operations
  user1.borrowBook(book1);
  user1.borrowBook(book2);
  user2.borrowBook(book1);

  user1.returnBook(book1);

  user2.borrowBook(book1);

  print('\nList of books borrowed by each user:');
  user1.listBorrowedBooks();
  user2.listBorrowedBooks();
}
