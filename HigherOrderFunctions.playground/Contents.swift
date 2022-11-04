import Foundation

var euCountries: Set = ["Italy", "France", "Germany", "Belgium"]

var countriesAndCapitals = [
  "Italy": "Rome",
  "France": "Paris",
  "England": "London",
  "Russia": "Moscow",
  "Belarus": "Minsk",
  "Belgium": "Brusseles"
]

var euCountriesAndCapitals = countriesAndCapitals.filter { euCountries.contains($0.key)
}
euCountriesAndCapitals

var newCapitals = [
  "Italy": "Milan",
  "Russia": "Saint-Petersburg",
  "Belarus": "Vitebsk"
]

var updatedDictWithCapitals = countriesAndCapitals.mapValues { (value) -> String in
  
  if let keyValue = countriesAndCapitals.first(where: { $0.value == value }), let newCapital = newCapitals[keyValue.key] {
    return newCapital
  } else {
    return value
  }
  
}

countriesAndCapitals.merge(newCapitals, uniquingKeysWith: { (old, new) in
  new
})
countriesAndCapitals

var sortedByCountry = countriesAndCapitals.sorted(by: { $0.key < $1.key })
sortedByCountry

var intArr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
let sumOfInt = intArr.reduce(0, { (prevValPlusResult, nextValue) in
    prevValPlusResult + nextValue
})

sortedByCountry.forEach { key, value in
  print("\(key) - \(value)")
}
