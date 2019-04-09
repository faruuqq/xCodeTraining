import UIKit

//var str = "Hello, playground"

//let name: String = "Muhsin"
//var money: Int = 1000



//let totalMoney = "\(money) " + name


class Pikachu {
    private var strength: Int = 0 //encapsulation
    var heathPoint: Int = 0
    var defense: Int = 0
    
    func attack(){
        print("attack")
    }
    
    func isDead() {
        print("Game Over")
    }
    
}

class Pikampret {
    var strength: Int = 0
    var heathPoint: Int = 0
    var defense: Int = 0
    
    func attack() {
        print("attack")
    }
    
    func isDead() {
        print("Game Over")
    }
    
}

let player1 = Pikachu()
player1.attack()

