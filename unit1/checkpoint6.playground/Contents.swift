import UIKit

// Assumes 6-gear car
struct Car {
    let model: String
    let numSeats: Int
    var currentGear: Int = 1 // range of 1-6
    
    mutating func changeToGear(_ gear: Int) {
        if self.currentGear != gear && gear > 0 && gear < 7 {
            self.currentGear = gear
            print("Now in gear", self.currentGear)
        } else if self.currentGear == gear {
            print("Already in gear \(self.currentGear)!")
        } else if gear > 0 || gear < 7 {
            print("Not a possible gear on this car!")
        }
    }
    
}
var Honda = Car(model: "CRV", numSeats: 5)
Honda.changeToGear(5)
Honda.changeToGear(5) // Throw same gear 
Honda.changeToGear(8) // Throw out of range
Honda.changeToGear(1)
Honda.changeToGear(0) // Throw out of range


/*
Notes from lec10/11
 
 struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1


struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

print(School.studentCount)

School.add(student: "Taylor Swift")
print(School.studentCount)
*/
