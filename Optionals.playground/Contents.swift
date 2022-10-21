import UIKit

var a = 1

// Implicitly Unwrapped Optional (i.e. already unwrapped), can contain nil, Xcode doesn't warn us, don't need to unwrap
// use ! character to make an optional variable
var b:Int! = nil
var b1:Int!

// Regular Optional (need to unwrap first), can contain nil, Xcode warns us, need to unwrap to get value
// use ? character to make an optional variable
var c:Int? = nil
var c1:Int?

// can also assign values other than nil
var b2:Int! = 10
var c2:Int? = 10

var x = 1 + a

// error would occur for below
//var x = 1 + b

if b != nil {
    var x = 1 + b
}

// use ! to unwrap the optional c
// var y = 1 + c!

// Optional binding - a way to check if the optionak is nil
if let e = c {
    var f = 1 + e
}

struct Person {
    
    var name = "Toby"
    
    func talk() {
        
        print("hello")
    }
}

var z:Person? = nil
// force unwrap or just unwrap
// z!.talk()

//optional chaining
var w:Person? = Person()
w?.talk()

// z!.name
w?.name

