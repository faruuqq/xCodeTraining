import UIKit

//var str = "Hello, playground"

//let name: String = "Muhsin"
//var money: Int = 1000



//let totalMoney = "\(money) " + name


//class Pokemon {
//    func attack(){
//        print("inheritance attack")
//    }
//
//    func isDead() {
//        print("inheritance Game Over")
//    }
//}

protocol Pokemon{ //polimorphism
    func attack()
    func isDead()
}

class Pikachu : Pokemon{
    func attack() {
        print("Pikachu Attack")
    }
    
    func isDead() {
        print("Pikachu is Dead")
    }
    //penulisan class diawali huruf besar (code of developer)
    private var strength: Int = 30 //encapsulation
    var heathPoint: Int = 100
    var defense: Int = 25
    
    
}

class Pikampret : Pokemon{
    var strength: Int = 40
    var heathPoint: Int = 100
    var defense: Int = 10
    
    func attack() {
        print("Pikampret attack")
    }
    
    func isDead() {
        print("Pikampret Game Over")
    }
    
}

let player1 = Pikachu()
player1.attack()
player1.isDead()

let player2 = Pikampret()
player2.attack()
player2.isDead()
