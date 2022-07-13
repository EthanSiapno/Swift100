import UIKit

var greeting = "Last checkpoint SHEEEEESH"

// Challenge is to do complete in a single line of code
func randomInt(_ numbers: [Int]?) -> Int {
    return numbers?.randomElement() ?? Int.random(in: 1...100)
}

let emptyArr: [Int] = []
let oneElemArr = [1]
let threeElemArr = [100, 200, 300]

randomInt(emptyArr)
randomInt(oneElemArr)
randomInt(threeElemArr)
