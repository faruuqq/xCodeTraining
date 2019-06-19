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
    
    func uniqueSkill() {
        
        let serap = Pikampret()
        serap.strength
        strength = serap.strength + strength
        let ilmuSakti = serap.strength + strength
        print ("streng pikachu sekarang \(ilmuSakti)")
    }
    
    func attack() {
        let seranganPikachu = Pikampret()
        let kalkulasiPikachu = seranganPikachu.healthPoint - strength
        print("sisa healthpoint Pikachu \(kalkulasiPikachu)")
        print("Pikachu Attack")
    }
    
    func isDead() {
        print("Pikachu is Dead")
    }
    
    
    //penulisan class diawali huruf besar (code of developer)
    //private var strength: Int = 30 //encapsulation
    var strength: Int = 10
    var healthPoint: Int = 100
    var defense: Int = 25
    
}

class Pikampret : Pokemon{
    var strength: Int = 40
    var healthPoint: Int = 100
    var defense: Int = 10
    
    func attack() {
        let nyerang = Pikachu()
        nyerang.healthPoint
        let kalkulasi = nyerang.healthPoint - strength
        print("\(nyerang.healthPoint)")
        print ("Nyawa Pikachu sisa \(kalkulasi)")
        print("Pikampret attack")
    }
    
    func isDead() {
        print("Pikampret Game Over")
    }
    
}

let player1 = Pikachu()
//player1.attack()
player1.uniqueSkill()
player1.attack()
player1.strength
print("\(player1.strength)")
player1.isDead()
//player1.defense

let player2 = Pikampret()
player2.attack()
player2.isDead()

//class A {
    //var b = 10
   // func attack() {
    // b = 50
        //print("\(b)")
  // }
//}

//let qwe = A()
//qwe.attack()
//print("\(qwe.b)")
