import Foundation

class Card : NSObject {
    var color : Color
    var value : Value
    
    init(color: Color, value: Value) {
        self.color = color
        self.value = value
    }
    
    override var description : String {
        var str = "This card is: "
        str += String(describing: self.value)
        str += " from " + self.color.rawValue
        return str
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        if let castObj = object as? Card {
            return (self.value == castObj.value) && (self.color == castObj.color)
        }
        return false
    }
}
