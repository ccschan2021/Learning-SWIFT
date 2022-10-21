import UIKit

var greeting = "Hello, playground"

var myNum:Int = 10

var myArray:[Int] = [Int]()
var myArray2 = [10, 100, 1000]

myArray.append(10)
myArray.append(100)
myArray.append(1000)

print(myArray)
print(myArray[0])

myArray[0] = 1
print(myArray)

myArray.remove(at: 1)
print(myArray)

myArray.insert(10, at: 0)
print(myArray)
print(myArray.count)

myArray.shuffle()
print(myArray)
myArray.sort()
print(myArray)
myArray.reverse()
print(myArray)
print(myArray.contains(32))

myArray.firstIndex(of: 100)
myArray.lastIndex(of: 10)
