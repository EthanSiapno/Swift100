import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

/*
 Your job is to:

 1. Filter out any numbers that are even
 2. Sort the array in ascending order
 3. Map them to strings in the format “7 is a lucky number”
 4. Print the resulting array, one item per line

 */

// first attempt
let filtered = luckyNumbers.filter{ $0 % 2 == 1 }
print(filtered)

let sortLucky = filtered.sorted { $0 < $1 }
print(sortLucky)

let mapLucky = sortLucky.map {
    String($0) + " is a lucky number"
}

for item in mapLucky {
    print(item)
}

// Second cleaner attempt after reading the hints
let oneLine = luckyNumbers.filter{!$0.isMultiple(of: 2)}.sorted{ $0 < $1 }.map{ String($0) + " is a lucky number" }

for line in oneLine { print(line) }
