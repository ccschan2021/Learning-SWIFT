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

var res = [6, 11, 14, 17]
var rand = [Int]()
var run2 = 0

repeat {
    repeat {
        rand = []
        for count in 1...4  {
            rand.append(Int.random(in: 1...35))
        }
        rand.sort()
    }
    while ((rand[0] == rand[1]) || (rand[1] == rand[2]) || (rand[2] == rand[3]))
    run2 += 1
    print("Run: \(run) \(rand[0]) \(rand[1]) \(rand[2]) \(rand[3])")
}
while (((rand[0] != res[0]) || (rand[1] != res[1]) || (rand[2] != res[2]) || (rand[3] != res[3])) && (run < 50000))
