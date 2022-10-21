// String.  Comment only
//"hello"

//var myVar:String = "hello"
//myVar = "world"
//print(myVar)

// Int
//12
//10
//var myInt:Int = 100
//print(myInt)

// Double
//0.4
//1.2

// Bool
//true
//false

// use let for constance
//let myConst:String = "hello"
//print(myConst)

import UIKit

//func myFunc2() -> Void {
//
//}

//func myFunc(a:Int) -> Int {
//
//    let b = 20
//
//    return a+b
//}

//let mySum = myFunc(a: 5)

// make input argument b as optional, default value applied if input for b is not provided
// using argument labels: firstNumber & secondNumber
// can use _ to replace argument
func myFunc3(_ a:Int, _ b:Int = 0) -> Int {
//func myFunc3(firstNumber a:Int, secondNumber b:Int = 0) -> Int {

    return a+b
}

//print(myFunc3(a:20, b:5))
//print(myFunc3(a:20))
//print(myFunc3(firstNumber:1, secondNumber:3))
print(myFunc3(1, 2))

struct DatabaseManager {
    
    private var serverName = "Server 1"
    
    func saveData(data:String) -> Bool {
        
        return true
    }
}

struct ChatView {
    
    var message:String = ""
    var messageWithPrefix:String {
        // if there is only 1 line of code, keyword "return" can be skipped
        return "Chris says: " + message
    }
    
    func sendChat() {
        
        var prefix = "Chris Says: "
        
        var db = DatabaseManager()
        let Successful = db.saveData(data: message)
        
        print(prefix + message)
        
    }
    
    func deleteChat() {
        
        print(messageWithPrefix)
        
    }
}

struct MyStructure {
    
    var message = "Hello"
    
    func myFunction() {
        
        print(message)
        
    }
}

var a:MyStructure = MyStructure()
print(a.message)
a.message = "Hi"
print(a.message)
a.myFunction()

var b = MyStructure()
b.message = "World"
print(b.message)

let a1 = 1
let b1 = 2
let c1 = 3
let d1 = "hello"
let e1 = false
let f1 = true
let g1 = true
let h1 = "world"

// && <- And
// || <- Or
// >, <, >=, <=, ==
// !
if (f1 || e1) && (a1 == 0) {
    print("Hello World")
}
else if d1 > h1 {
    
}
else if !g1 {

}
else {
    print("Catch All")
}
