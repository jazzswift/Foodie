//
//  Recipe.swift
//  Foodie
//
//  Created by Iuri Ferreira on 21/07/23.
//

import Foundation

struct Recipe : Hashable, Codable {
    var name : String
    var ingredients : [Ingredient]
    var cookTime : String
    var servings : String
    var steps : [String]
    var imageName : String
}

extension Recipe {
    static var sampleData : [Recipe] = [
        Recipe(name: "Baked Shrimp Scrampi",
               ingredients: [Ingredient(quantity: "2kg", name: "Shrimp", emoji: "S"),Ingredient(quantity: "2kg", name: "Camarão", emoji: "S"),Ingredient(quantity: "2kg", name: "Camarão", emoji: "S")
            ],
            cookTime: "20 mins", servings: "2 p", steps: ["1.blablablabla","2.blablablabla","3.blablabla"],
            imageName: "bakedShrimpScrampi"),
        Recipe(name: "Garlic Shrimp Spaghetti",
               ingredients: [Ingredient(quantity: "2kg", name: "Camarão", emoji: "S"),Ingredient(quantity: "2kg", name: "Camarão", emoji: "S"),Ingredient(quantity: "2kg", name: "Camarão", emoji: "S")
            ],
            cookTime: "20 mins", servings: "2 p", steps: ["1.blablablabla","2.blablablabla","3.blablabla"],
            imageName: "garlicShrimpSpaghetti"),
    ]
}
