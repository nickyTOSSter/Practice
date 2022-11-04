import Foundation

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
let (justStatusCode, _) = http404Error
let http200Status = (statusCode: 200, statusMessage: "Ok")

print(http404Error)
print(http404Error.0)
print(http404Error.1)
print(statusCode)
print(statusMessage)
print(justStatusCode)
print(http200Status)
print(http200Status.statusCode)
print(http200Status.statusMessage)

