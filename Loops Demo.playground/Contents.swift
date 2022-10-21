import UIKit

// For - In

for index in 1...10 {
    
    print("Hello")
}

for index2 in 0...10 {
    
    print("World!!!")
}

// 1 less dot
for index3 in 0..<10 {
    
    print("Steve")
}

// using _

for _ in 1...10 {
    
    print("Lois")
}

for index4 in 1...10 {
    
    print("Hello \(index4)")
}

var array = [1, 5, 10]

for index5 in 0...array.count-1 {
    print(array[index5])
}

// another way
for element in array {
    print(element)
}

var counter = 10
// Repeat While Loop
repeat {
    print(counter)
    counter -= 1
} while counter > 0

counter = 10
// While
while counter > 0 {
    print(counter)
    counter -= 1
}
