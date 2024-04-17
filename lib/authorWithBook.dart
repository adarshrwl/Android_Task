import 'package:class_work_1/author.dart';
import 'package:class_work_1/book.dart';

void main() {
  // Create authors
  Author a1 = Author(author: 'Ansal Subedi');
  Author a2 = Author(author: 'Divash Bhattarai');
  Author a3 = Author(author: 'Ajit Kumar Mandal');
  Author a4 = Author(author: 'Adarsh Rawal');

  // Create a list of authors
  List<Author> authors = [a1, a2, a3, a4];

  
  Book b1 = Book(book: 'Computer Science', lsitauthor: [a1]);
  Book b2 = Book(book: 'Data Science', lsitauthor: [a2]);
  Book b3 = Book(book: 'Android Development', lsitauthor: [a3]);
  Book b4 = Book(book: 'Python', lsitauthor: [a4]);


  List<Book> books = [b1, b2, b3, b4];

 
  for (Book book in books) {
    if (book.book == 'Python') {
      print('Authors for the book "Python":');
      for (Author author in book.lsitauthor) {
        print(author.author);
      }
    }
  }
}
