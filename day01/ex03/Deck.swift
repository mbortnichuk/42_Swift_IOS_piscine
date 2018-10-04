import Darwin
import Foundation

class Deck : NSObject {
    
    static let allSpades = Value.allValues.map { (number) -> Card in
        var output = Card(color: Color.Spades, value:number)
        return output
    }
    
    static let allHearts = Value.allValues.map { (number) -> Card in
        var output = Card(color: Color.Hearts, value:number)
        return output
    }
    
    static let allClubs = Value.allValues.map { (number) -> Card in
        var output = Card(color: Color.Clubs, value:number)
        return output
    }
    
    static let allDiamonds = Value.allValues.map { (number) -> Card in
        var output = Card(color: Color.Diamonds, value:number)
        return output
    }
    
    static let allCards = allSpades + allHearts + allClubs + allDiamonds
}

extension Array {

    mutating func mix() {
        var arrId = Array<Int>(indices) //indices is a property of my Array
        var id = arrId.endIndex //last element of the index

        let idIterator = AnyIterator<Int> { //the closure below is called for each element
            guard let idNext = arrId.index(id, offsetBy: -1, limitedBy: arrId.startIndex)
                else {
                    return nil
            }

            id = idNext
            let idRandom = Int(arc4random_uniform(UInt32(id)))
            if idRandom != id {
                swap(&arrId[idRandom], &arrId[id]) //the & allows a path by reference
            }
            return arrId[id]
        }
        self = idIterator.map {self[$0]}
    }
}

//extension Array {
//
//    mutating func shuffleDeck(){
//        for i in startIndex ..< endIndex - 1 {
//            let j = Int(arc4random_uniform(UInt32(count - i))) + i
//            guard i != j else { continue }
//            swap(&self[i], &self[j])
//        }
//    }
//}

