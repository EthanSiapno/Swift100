import UIKit

var greeting = "Hello, checkpoint8. Day 13 really kicked my ass!"

protocol Building {
    var numRooms: Int {get}
    var price: Int {get}
    var agentName: String {get}
    func salesSummary()
}

// I have no idea of prices of houses, offices, buildings, and general real estate btw.

struct House: Building {
    let numRooms = 5
    let price = 250000
    let agentName = "Peter Griffin"
    func salesSummary() {
        print("\(type(of: self))")
    }
}

house = House() // Implemented House incorrectly; will come back to this

