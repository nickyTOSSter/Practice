import Foundation

enum CompassPoint {
  case north
  case south
  case east
  case west
}

enum Planet {
  case mercury, venus, earh, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west
directionToHead = .east

switch directionToHead {
case .north:
  print("Lots of planets have a north")
case .south:
  print("Watch out for penguins")
case .east:
  print("Where the sun rises")
case .west:
  print("Where the skies are blue")
}

let somePlanet: Planet = .earh

switch somePlanet {
case .earh:
  print("Mostly harmless")
default:
  print("Not a safe place for humans")
}

enum Bevarage: CaseIterable {
  case coffee, tea, juice
}
let numberOfChices = Bevarage.allCases.count
for bevarage in Bevarage.allCases {
  print(bevarage)
}

enum Barcode {
  case upc(Int, Int, Int, Int)
  case qrCode(String)
}

var productBarcode = Barcode.upc(9, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case let .upc(numberSystem, manufacturer, productBarcode, check) where numberSystem == 8:
  print("UPC code number of system 8")
case let .upc(numberSystem, manufacturer, productBarcode, check):
  print("Another upc code with number of system \(numberSystem)")
case let .qrCode(productCode):
  print("QR code: \(productCode)")
}

enum ASCIIControlCharacter: Character {
  case tab = "\t"
  case lineFeed = "\n"
  case carriageReturn = "\r"
}

enum NumberedPlanet: Int {
  case mercury = 1, venus, earh, jupiter, saturn, uranus, neptune
}

let thirdPlanet = NumberedPlanet.init(rawValue: 3)
