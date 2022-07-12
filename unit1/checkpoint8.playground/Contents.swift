import UIKit

var greeting = "Hello, checkpoint8. Day 13 really kicked my ass!"

protocol Building {
    var name: String {get}
    var numRooms: Int {get}
    var price: Int {get}
    var agentName: String {get}
    func salesSummary()
}

// I have no idea of prices of houses, offices, buildings, and general real estate btw.

struct Office: Building {
    let name: String
    let numRooms: Int
    let price: Int
    let agentName: String
    var numEmployees: Int = 10
    
    func salesSummary() {
        print("\(name) is $\(price) \(type(of: self)). It has \(numRooms), and the real estate agent for this property is \(agentName). There are \(numEmployees) working in this building.")
    }
    
    mutating func fireEmployee() {
        numEmployees -= 1
        print("Fired! There are now \(numEmployees) working in this office")
    }
    mutating func hireEmployee() {
        numEmployees += 1
        print("Fired! There are now \(numEmployees) working in this office")
    }
    
    
    static let example = Office(name: "Dunder Mifflin", numRooms: 30, price: 675000, agentName: "Michael Scott")
}


struct House: Building {
    let name: String
    var numRooms: Int
    var price: Int
    let agentName: String
    
    func salesSummary() {
        print("\(name) is $\(price) \(type(of: self)). It currently has \(numRooms) rooms, and the real estate agent for this property is \(agentName).")
    }
    
    mutating func addRoom() {
        numRooms += 1
        price += 50000
        print("This house now has \(numRooms). The new estimated price of the house is $\(price). Congratulations!")
    }
    
    static let example = House(name: "Home", numRooms: 5, price: 250000, agentName: "Peter Griffin")
}

var officee = Office.example
var housee = House.example

officee.salesSummary()
housee.salesSummary()

officee.hireEmployee()
officee.salesSummary()

housee.addRoom()
housee.salesSummary()
