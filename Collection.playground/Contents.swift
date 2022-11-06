import Foundation

struct Book {
  let author: String
  let title: String
}

struct Shelf {
  var books: [Book]
}

extension Shelf: Collection {
   
  subscript (position: Int) -> Book {
      precondition(indices.contains(position), "out of bounds")
      let element = books[position]
      return element
    }
  
  var startIndex: Int { return books.startIndex }
  var endIndex: Int { return books.endIndex }
  
  func index(after i: Int) -> Array.Index {
      return books.index(after: i)
  }

  
}

var book1 = Book(author: "Лев Толстой", title: "Война и мир")
var book2 = Book(author: "Джордж Оруэлл", title: "1984")
var book3 = Book(author: "Джеймс Джойс", title: "Улисс")
var book4 = Book(author: "Владимир Набоков", title: "Лолита")
var book5 = Book(author: "Уильям Фолкнер", title: "Шум и ярость")
var book6 = Book(author: "Ральф Эллисон", title: "Человек-невидимка")
var book7 = Book(author: "Гомер", title: "Илиада и Одиссея")
var book8 = Book(author: "Джейн Остен", title: "Гордость и предубеждение")
var book9 = Book(author: "Вирджиния Вульф", title: "На маяк")
var book10 = Book(author: "Данте Алигьери", title: "Божественная комедия")

var shelf = Shelf(books: [book1, book2, book3, book4, book5, book6, book7, book8, book9, book10])
shelf.startIndex
shelf.index(after: 0)

let firstG = shelf.firstIndex(where: { $0.author.hasPrefix("Дж")})
firstG
for book in shelf {
  print("\(book.author) - \(book.title)")
}
print(shelf.indices)
let indx9 = shelf[9]
print(indx9)

let slice = shelf[..<3]
for item in slice {
  print(item)
}


