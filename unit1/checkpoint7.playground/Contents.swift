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
Persia.speak() // ... 
let Mufasa = Lion(legs: 4, isTame: false)
Mufasa.speak() // Roar
let kitty = Cat(legs: 4, isTame: true)
kitty.speak() // Meow
let Pood = Poodle(legs: 4)
Pood.speak() // Bark
let Corg = Corgi(legs: 4)
Corg.speak() // Arf
let Dawg = Dog(legs: 4)
Dawg.speak() // Ruff
