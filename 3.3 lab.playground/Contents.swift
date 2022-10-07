import UIKit

class pets: {
    var type = ""
    var numberOfLegs = 0
    var numberOfWings = 0
    
    func action() {
        //override this
    }
}

class dog: Pet {
    override init() {
        super.init()
        
        self.type = "dog"
        self.numberoflegs = 4
        self.numberofWings = 0
    }
    
    override func makenoise() {
        print("Woof")
    }
    
    func walk() {
        
    }
}

class cat: Pet {
    override init() {
        super.init()
        
        self.type = "cat"
        self.numberofLegs = 4
        self.numberofWings = 0
    }
    
    override func makenosie() {
        print("Meow")
    }
}

class bird: Pet {
    override init() {
        super.init()
        
        self.type = "bird"
        self.numberofLegs = 2
        self.numberofWings = 2
    }
    
    func payTaxes()
    
    }
}


let pets: [Pet] = [Dog(), Bird(), Cat()]

for pet in pets {
    if let = pet as? Dog {
        
    }else if let Cat = pet as? cat {
        print("It a Dog")
        
    }else if let Bird= pet as? Bird {
        print("It a Bird")
    }
