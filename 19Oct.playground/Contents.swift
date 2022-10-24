import UIKit

/*
var res = [6, 11, 14, 17, 24, 25, 33]
var rand = [Int]()
var run = 0


repeat {
    repeat {
        rand = []
        for count in 1...7  {
            rand.append(Int.random(in: 1...35))
        }
        rand.sort()
    }
    while ((rand[0] == rand[1]) || (rand[1] == rand[2]) || (rand[2] == rand[3]) || (rand[3] == rand[4]) || (rand[4] == rand[5]) || (rand[5] == rand[6]))
    run += 1
    print("Run: \(run) \(rand[0]) \(rand[1]) \(rand[2]) \(rand[3]) \(rand[4]) \(rand[5]) \(rand[6])")
}
while (((rand[0] != res[0]) || (rand[1] != res[1]) || (rand[2] != res[2]) || (rand[3] != res[3]) || (rand[4] != res[4]) || (rand[5] != res[5]) || (rand[6] != res[6])) && (run < 100000))
*/


var res = [7, 17, 21, 24, 35, 41]
var rand = [Int]()
var run2 = 0

repeat {
    repeat {
        rand = []
        for count in 1...6  {
            rand.append(Int.random(in: 1...45))
        }
        rand.sort()
    }
    while ((rand[0] == rand[1]) || (rand[1] == rand[2]) || (rand[2] == rand[3]) || (rand[3] == rand[4]) || (rand[4] == rand[5]))
    run2 += 1

    print("Run: \(run2) \(rand[0]) \(rand[1]) \(rand[2]) \(rand[3]) \(rand[4]) \(rand[5])")
}
while (((rand[0] != res[0]) || (rand[1] != res[1]) || (rand[2] != res[2]) || (rand[3] != res[3]) || (rand[4] != res[4]) || (rand[5] != res[5])) && (run2 < 10))

/*
var rand = [Int]()
repeat {
    rand = []
    for count in 1...7  {
        rand.append(Int.random(in: 1...35))
    }
    rand.sort()
}
while ((rand[0] == rand[1]) || (rand[1] == rand[2]) || (rand[2] == rand[3]) || (rand[3] == rand[4]) || (rand[4] == rand[5]) || (rand[5] == rand[6]))
print("\(rand[0]) \(rand[1]) \(rand[2]) \(rand[3]) \(rand[4]) \(rand[5]) \(rand[6])")

 */
 
/*
var chance = (45 * 44 * 43 * 42 * 41 * 40) / (6 * 5 * 4 * 3 * 2)
print(chance)
*/
