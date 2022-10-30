import Foundation

var europeanCapitals = ["Madrid", "London", "Moscow", "Paris", "Berlin"]
let amountOfCapitals = europeanCapitals.count

europeanCapitals.append("Lisbon")
europeanCapitals.append(contentsOf: ["Tallin", "Riga"])

europeanCapitals += ["Helsinki"]
europeanCapitals += ["Oslo", "Stockholm"]

europeanCapitals.insert("Copenhagen", at: 8)

europeanCapitals.replaceSubrange(2...3, with: ["Paris", "Moscow"])

if !europeanCapitals.isEmpty {
  var firstElementByProperty = europeanCapitals.first
  var firstElementBySubscript = europeanCapitals[0]
  var secondAndFourthElements = europeanCapitals[1...3]
  var lastElementByProperty = europeanCapitals.last
}
europeanCapitals.insert("Wroclaw", at: 9)

if let wrongElementIndex = europeanCapitals.firstIndex(of: "Wroclaw") {
  var deletedWrongElement = europeanCapitals.remove(at: wrongElementIndex)
}

let removedFirstElement = europeanCapitals.removeFirst()
let removedLastElement = europeanCapitals.removeLast()
let saferRemoveLast = europeanCapitals.popLast()

if europeanCapitals.count > 5 {
  europeanCapitals.removeLast(3)
}

for capital in europeanCapitals {
  print(capital)
}

for (index, value) in europeanCapitals.enumerated() {
  print("Index: \(index), value: \(value)")
}

let randomCapital = europeanCapitals.randomElement()

if !europeanCapitals.contains("Rome") {
  europeanCapitals.append("Rome")
}

europeanCapitals.contains { elem in
  elem.hasSuffix("is")
}

if let firstIs = europeanCapitals.first(where: {$0.hasSuffix("is")}) {
  print(firstIs)
}

let threeFirst = europeanCapitals.prefix(3)
let withoutThreeFirst = europeanCapitals.dropFirst(3)

let uppercased = europeanCapitals.map {
  $0.uppercased()
}

let charactersSum = europeanCapitals.reduce(0, { x, y in
  x + y.count
})

europeanCapitals.forEach {
  print("\($0) from forEach")
}

europeanCapitals.sort()
let reverseOrderedCapitals = europeanCapitals.sorted(by: {$0 > $1 })
reverseOrderedCapitals

europeanCapitals.shuffle()
europeanCapitals.reverse()

let someString = "From Russia with love"
let fromRussiaWithLoveArr = someString.split(separator: " ")
let arr = fromRussiaWithLoveArr.split(separator: "Russia")

