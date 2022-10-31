
import Foundation

var phoneCodesOfEUCapitals: [String: Int] = ["Sofia": 2, "London" : 171, "Berlin": 30]
phoneCodesOfEUCapitals["Rome"] = 6

phoneCodesOfEUCapitals.count
phoneCodesOfEUCapitals.isEmpty

phoneCodesOfEUCapitals["London"] = 181
if let oldValue = phoneCodesOfEUCapitals.updateValue(171, forKey: "London") {
  print("London old code \(oldValue)")
}

phoneCodesOfEUCapitals["Moscow"] = 495
var mscCode = phoneCodesOfEUCapitals["Moscow"]

phoneCodesOfEUCapitals["Moscow"] = nil
var mscNilCode = phoneCodesOfEUCapitals["Moscow"]

var mscDefaultCode = phoneCodesOfEUCapitals["Moscow", default: 495]
phoneCodesOfEUCapitals["Moscow"] = 495

var removedValue = phoneCodesOfEUCapitals.removeValue(forKey: "Moscow")

for (key, value) in phoneCodesOfEUCapitals {
  print("Phone code for \(key) is \(value)")
}

for key in phoneCodesOfEUCapitals.keys {
  print(key, terminator: " ")
}
print("")
for value in phoneCodesOfEUCapitals.values {
  print(value, terminator: " ")
}
print("")
var sortedByCountry = phoneCodesOfEUCapitals.sorted(by: { $0.key < $1.key } )
for (key, value) in sortedByCountry {
  print("Phone code for \(key) is \(value)")
}

if let index = phoneCodesOfEUCapitals.firstIndex(where: { $0.key.hasPrefix("Lon") }) {
  var lon = phoneCodesOfEUCapitals[index]
  print(lon)
}

var random = phoneCodesOfEUCapitals.randomElement()

var dictionary = ["a": 1, "b": 2]

// Keeping existing value for key "a":
dictionary.merge(["a": 3, "c": 4]) { (current, _) in current }
// ["b": 2, "a": 1, "c": 4]

// Taking the new value for key "a":
dictionary.merge(["a": 5, "d": 6]) { (_, new) in new }
// ["b": 2, "a": 5, "c": 4, "d": 6]

var londonAndRome = phoneCodesOfEUCapitals.filter { (key, value) in
  key == "London" || key == "Rome"
}
