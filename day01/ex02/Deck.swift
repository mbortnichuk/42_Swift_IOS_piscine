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
