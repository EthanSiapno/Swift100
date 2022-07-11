import UIKit

var greeting = "Hello, classes!"

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Ruff!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Bark!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Arf!")
    }
}



class Cat: Animal {
    let isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Meow")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar!")
    }
}

class Persian: Cat {
    override func speak() {
        print("...")
    }
}

let Persia = Persian(legs: 4, isTame: true)
Persia.speak()
let Mufasa = Lion(legs: 4, isTame: false)
Mufasa.speak()
