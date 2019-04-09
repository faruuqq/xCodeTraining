import UIKit

//var str = "Hello, playground"

//let name: String = "Muhsin"
//var money: Int = 1000



//let totalMoney = "\(money) " + name


class Pokemon {
    func attack(){
        print("inheritance attack")
    }
    
    func isDead() {
        print("inheritance Game Over")
    }
}

class Pikachu : Pokemon{ //penulisan class diawali huruf besar (code of developer)
    private var strength: Int = 30 //encapsulation
    var heathPoint: Int = 100
    var defense: Int = 25
    
}

class Pikampret {
    var strength: Int = 40
    var heathPoint: Int = 100
    var defense: Int = 10
    
    func attack() {
        print("attack")
    }
    
    func isDead() {
        print("Game Over")
    }
    
}

let player1 = Pikachu()
player1.attack()
player1.isDead()
