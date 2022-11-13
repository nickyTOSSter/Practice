import Foundation

struct Country {
  let name: String
  var population: Int
  var capital: City
  
  
}

class City {
  let name: String
  var population: Int {
    willSet {
      print("Population after change: \(newValue)")
    }
    
    didSet {
      print("Population before change: \(oldValue)")
    }
  }
  lazy var haveMillionCitizens: Bool = {
    population > 1_000_000
  }()
  var haveMillionCitizensComputed: Bool {
    population > 1_000_000
  }

  init(name: String, population: Int) {
    self.name = name
    self.population = population
  }
}

let rome = City(name: "Rome", population: 2_873_000)
rome.population += 1
print("\(rome.name) have \(rome.haveMillionCitizens ? "more": "less") than million citizens")
print("\(rome.name) have \(rome.haveMillionCitizensComputed ? "more": "less") than million citizens. Computed")
rome.population = 999_999
print("\(rome.name) have \(rome.haveMillionCitizens ? "more": "less") than million citizens")
print("\(rome.name) have \(rome.haveMillionCitizensComputed ? "more": "less") than million citizens. Computed")

let italy = Country(name: "Italy", population: 59_070_000, capital: rome)
//italy.population += 1
