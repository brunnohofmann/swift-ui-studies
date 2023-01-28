import SwiftUI

struct Fruit: Identifiable {
    let id: UUID
    var image: String
    var title: String
    var text: String
    var gradient: [Color]
    
    init(id: UUID = UUID(), image: String, title: String, text: String, gradient: [Color]) {
            self.id = id
            self.image = image
            self.title = title
            self.text = text
            self.gradient = gradient
        }
}

extension Fruit{
    static let sampleData: [Fruit] = [
        Fruit(image: "apple", title: "Apple", text: "Apple", gradient: [Color("ColorAppleLight"),Color("ColorAppleDark")]),
        Fruit(image: "blueberry", title: "Blueberry", text: "Cherry", gradient: [Color("ColorBlueBerryLight"),Color("ColorBlueBerryLight")]),
        Fruit(image: "cherry", title: "Cherry", text: "Cherry", gradient: [Color("ColorCherryLight"),Color("ColorCherryLight")]),
        Fruit(image: "cherry", title: "Cherry", text: "Cherry", gradient: [Color("ColorCherryLight"),Color("ColorCherryLight")]),
        Fruit(image: "gooseberry", title: "gooseberry", text: "gooseberry", gradient: [Color("ColorGooseberryLight"),Color("ColorGooseberryDark")]),
        Fruit(image: "grapefruit", title: "grapefruit", text: "grapefruit", gradient: [Color("ColorGrapefruitLight"),Color("ColorGrapefruitDark")]),
        Fruit(image: "lemon", title: "lemon", text: "lemon", gradient: [Color("ColorLemonLight"),Color("ColorLemonDark")]),
    ]
}
