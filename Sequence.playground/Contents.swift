import Foundation

struct Book {
  let author: String
  let title: String
}

struct Shelf {
  var books: [Book]
}

struct ShelfIterator: IteratorProtocol {
  private var books: [Book]

  init(books: [Book]) {
    self.books = books
  }

  mutating func next() -> Book? {
    defer {
      if books.isEmpty == false {
        books.removeFirst()
      }
    }
    return books.first
  }
}

extension Shelf: Sequence {
  func makeIterator() -> ShelfIterator {
    return ShelfIterator(books: books)
  }
}

let book1 = Book(author: "Ф. Достоевский",
                 title: "Идиот")
let book2 = Book(author: "Ф. Достоевский",
                 title: "Братья Карамазовы")
let book3 = Book(author: "Ф. Достоевский",
                 title: "Бедные люди")
let shelf = Shelf(books: [book1, book2, book3])

for book in shelf {
  print("\(book.author) – \(book.title)")
  print(shelf.books.count)
}

print("Explicit iterator")
var iterator = shelf.makeIterator()
while let book = iterator.next() {
  print("\(book.author) – \(book.title)")
}
iterator.next()
let first = shelf.first(where: { $0.title == "Бедные люди" })
print(first)

var smth = shelf.filter {
  $0.title == "Бедные люди" || $0.title == "Идиот"
}
