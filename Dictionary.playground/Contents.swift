import UIKit

var a:[String:String] = [String:String]()
var b = [String:String]()

// mixed type of data, use "Any"
var c = [String:Any]()

// Adding a key value pair
a["J183"] = "Chris Ching"

// Retrieving the value for a given key
print(a["J183"])        /*return as optinal*/
print(a["J18#DDFJSKN"]) /*return nil*/

// Update
a["J183"] = "Todd Cho"

// Remove a key value pair
a["J183"] = nil

// Declaring a dictionary initialized to key value pairs
var d = ["J183":"Chris Ching", "J294":"John Cho"]
var e = ["J183":"Chris Ching", "J294":"John Cho"]

// Iterating through a dictionary
for kvp in d {
    print("key is:" + kvp.key)
    print("value is: " + kvp.value)
}

// another way
for (key, value) in e {
    print("key is:" + key)
    print("value is: " + value)
}

// Tuple
var f:(String, String) = ("Hey", "There")
print(f.0)
print(f.1)
