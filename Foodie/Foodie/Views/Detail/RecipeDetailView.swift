//
//  RecipeDetailViewl.swift
//  Foodie
//
//  Created by Iuri Ferreira on 21/07/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe : Recipe
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(recipe.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: .infinity, height: 350, alignment: .center)
            
            Text(recipe.name)
                .font(.largeTitle)
        }
    }
}

struct RecipeDetailViewl_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: Recipe.sampleData[1])
    }
}
