import Foundation

print("=========== for-in ===========")
let capitals = ["Paris", "London", "Moscow", "Washington"]

for capital in capitals {
  print(capital)
}

print("=========== while ===========")
var count = 0
while count < capitals.count {
  print(capitals[count])
  count += 1
}

print("=========== repeat ===========")
var countRepeat = 0
repeat {
  print(capitals[countRepeat])
  countRepeat += 1
} while countRepeat < capitals.count
