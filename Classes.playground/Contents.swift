import UIKit

// unlike classes struct does not support inheritance
// classes can also conform to protocol e.g. view
// use "final" to stop subclassing
final class Person0 {
    
}

class Person {
    
    // can use "private" to stop property or method from being inherited
    // private var name = ""
    var name = ""
    
    // can use "private" to stop property or method from being inherited
    // private func talk() {
    func talk() {
        print("Make conversation")
    }
}
// var a = Person()

// Subclassing
// Making a subclass conform to View protocol
class Comedian: Person, View {
    
    // use keyword "override"
    override func talk() {
        print("Make people laugh")
        // use "super" to call parent's method with same name
        super.talk()
    }
}

var c = Comedian()
c.talk()

// Structures are value type
// Classes are reference types

struct TalkShowHost {
    var name = ""
}

// structure (value type) need a variable assignment before making value update
func changeName(p:TalkShowHost) {
    var c = p
    c.name = "Bob"
}

// Checking the difference between classes and structs
var a = TalkShowHost()
a.name = "Joe"

var b = a
b.name = "Ted"

print(a.name)
print(b.name)

changeName(p: a)

var e = Comedian()
e.name = "Chris"

var f = e
f.name = "David"

print(e.name)
print(f.name)

func changeName2(p: Comedian) {
    p.name = "Shane"
}

changeName2(p: e)
print(e.name)
print(f.name)
