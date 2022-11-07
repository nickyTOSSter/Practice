import Foundation
import Darwin

func sayHelloWorld() {
  print("Hello, World")
}
sayHelloWorld()

func greet(_ person: String) {
  print("Hello, \(person)")
}
let person = "Bob"
greet(person)

func multiply(_ num: Int, multiplier: Int) -> Int {
  num * multiplier
}
let fiveMultiplySix = multiply(5, multiplier: 6)

func minMax(arr: [Int]) -> (min: Int, max: Int) {
  var min = arr[0]
  var max = arr[0]
  
  for value in arr[1..<arr.count] {
    if value < min {
      min = value
    } else if value > max {
      max = value
    }
  }
  return (min, max)
}

let resultsMinMax = minMax(arr: [1, 3, 5, 2, 6, 8, 7, 4, 10])
print("\(resultsMinMax.min) - \(resultsMinMax.max)")

func someFunctionWithDefaultValue(a: Int, b: Int = 12) -> Int {
  a * b
}

print(someFunctionWithDefaultValue(a: 10, b: 5))
print(someFunctionWithDefaultValue(a: 5))

func variadicParamFunc(text: String, numbers: Int...) {
  print("\(text)")
  for number in numbers {
    print(number)
  }
}
variadicParamFunc(text: "testing variadic parametr", numbers: 1, 7, 5, 2)

func swatTwoInts(a: inout Int, b: inout Int) {
  let tmp = a
  a = b
  b = tmp
}

var a = 12
var b = 18
swatTwoInts(a: &a, b: &b)
a
b

let multiplyConst: (Int, Int) -> Int  = multiply
let c = multiplyConst(b, a)


func printResultOfMathOperation(a: Int, b: Int, mathOperation: (Int, Int) -> Int) {
  print(mathOperation(a, b))
}

printResultOfMathOperation(a: 10, b: 5, mathOperation: multiply)
printResultOfMathOperation(a: 10, b: 7, mathOperation: {$0 - $1} )

func stepForward(_ input: Int) -> Int {
  return input + 1
}
func stepBackward(_ input: Int) -> Int {
  return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
  return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
print("Counting to zero:")
while currentValue != 0 {
  print("\(currentValue)... ")
  currentValue = moveNearerToZero(currentValue)
}

func chooseStepFunctionNested(backward: Bool) -> (Int) -> Int {
  func stepForward(input: Int) -> Int { return input + 1 }
  func stepBackward(input: Int) -> Int { return input - 1 }
  return backward ? stepBackward : stepForward
}
var currentValueNested = -4
let moveNearerToZeroNested = chooseStepFunctionNested(backward: currentValueNested > 0)
print("Counting to zero:")
while currentValueNested != 0 {
  print("\(currentValueNested)... ")
  currentValueNested = moveNearerToZeroNested(currentValueNested)
}
print("zero!")
