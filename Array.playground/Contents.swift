import Foundation

var europeanCapitals = ["Madrid", "London", "Moscow", "Paris", "Berlin"]
let amountOfCapitals = europeanCapitals.count

europeanCapitals.append("Lisbon")
europeanCapitals.append(contentsOf: ["Tallin", "Riga"])

europeanCapitals += ["Helsinki"]
europeanCapitals += ["Oslo", "Stockholm"]

europeanCapitals.insert("Copenhagen", at: 8)

var firstElementByProperty = europeanCapitals.first
var firstElementBySubscript = europeanCapitals[0]
var secondAndFourthElements = europeanCapitals[1...3]
var lastElementByProperty = europeanCapitals.last

europeanCapitals.insert("Wroclaw", at: 9)
var wrongElementIndex = europeanCapitals.firstIndex(of: "Wroclaw")

if let wrongElementIndex = wrongElementIndex {
  var deletedWrongElement = europeanCapitals.remove(at: wrongElementIndex)
}

let removedFirstElement = europeanCapitals.removeFirst()
let removedLastElement = europeanCapitals.removeLast()

for capital in europeanCapitals {
  print(capital)
}

for (index, value) in europeanCapitals.enumerated() {
  print("Index: \(index), value: \(value)")
}
