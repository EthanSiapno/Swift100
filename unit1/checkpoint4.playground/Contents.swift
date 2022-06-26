import UIKit

enum RootError: Error {
    case tooHigh, tooLow, noRoot
}


/* Brute Force per specification, and unoptimized,
 but this helps me get acquainted with applied
 error handling and management habits. */
func squarerootThrow(_ number: Int) throws -> Int {
    if (number < 1) { throw RootError.tooLow }
    if (number > 10000) { throw RootError.tooHigh }
    
    for i in 1...100 {
        if (i*i == number) {
            return i
        }
    }
    throw RootError.noRoot
}
