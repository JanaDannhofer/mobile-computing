
import Foundation

class Model {
    var number = 0
    
    func isCorrect (guess:Int!)-> Bool{
        return guess == number
    }
    
    func compareTo (guess:Int!) -> Int {
        
        var result=0

        if guess < number {
            result = 1
        }else if guess > number {
            result = -1
    }
        
        return result
}
    func newGame (){
        number = Int.random(in: 0..<100)
    }
}
