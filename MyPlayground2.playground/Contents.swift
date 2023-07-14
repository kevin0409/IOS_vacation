import Foundation

class Animal{
    var legCount = 0
    func simpleDesc() -> String{
        "This animal has \(legCount) legs"
    }
}

let monster = Animal()
monster.legCount = 10

monster.simpleDesc()
