import Foundation

var someEmptySet = Set<String>()
var possibleSet: Set<String> = []
var possibleNonEmptySet: Set = [1, 2, 3]

var europeanCapitals = Set(["Rome", "London", "Paris"])
europeanCapitals.insert("Brussels")
europeanCapitals.update(with: "Moscow")

print("The set is \(europeanCapitals.isEmpty ? "empty" : "not empty"). Current amount of elements in set is \(europeanCapitals.count).")

europeanCapitals.insert("Milan")
if let wrongAddedCity = europeanCapitals.remove("Milan") {
  print("Waht a pity! \(wrongAddedCity) is not a capital.")
} else {
  print("No such city in set")
}
   
let romeIsAlreadyIn = europeanCapitals.contains("Rome")

let sorted = europeanCapitals.sorted()
print(type(of: sorted))

for city in europeanCapitals {
  print(city)
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

let oddPlusEvenDigits = oddDigits.union(evenDigits) // объединение

oddDigits.intersection(oddPlusEvenDigits).sorted() // есть в обоих сетах
singleDigitPrimeNumbers.intersection(evenDigits).sorted()

singleDigitPrimeNumbers.symmetricDifference(oddDigits).sorted() // значение только в одном из сетов

singleDigitPrimeNumbers.subtracting(oddDigits).sorted() // нет значений в
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()

let employees: Set = ["Alicia", "Bethany", "Chris", "Diana", "Eric"]
let attendees: Set = ["Alicia", "Bethany", "Chris", "Diana"]
let attendeesPlusEric: Set = ["Alicia", "Bethany", "Chris", "Diana", "Eric"]

print(employees.isSuperset(of: attendees))
print(employees.isSuperset(of: attendeesPlusEric))
print(employees.isStrictSuperset(of: attendees))
print(employees.isStrictSuperset(of: attendeesPlusEric))
print(attendees.isSubset(of: employees))
print(attendeesPlusEric.isSubset(of: employees))
print(attendees.isStrictSubset(of: employees))
print(attendeesPlusEric.isStrictSubset(of: employees))
print(employees == attendeesPlusEric)

let visitors: Set = ["Marcia", "Nathaniel", "Olivia"]
let visitorsPlusEric: Set = ["Marcia", "Nathaniel", "Olivia", "Eric"]
print(employees.isDisjoint(with: visitors))
print(employees.isDisjoint(with: visitorsPlusEric))
