//
//  RecipesListView.swift
//  Foodie
//
//  Created by Iuri Ferreira on 21/07/23.
//

import SwiftUI

struct RecipesListView: View {
    
    @State private var allRecipes = [Recipe]()
    
    var body: some View {
        List(allRecipes, id:\.self) { recipe in
            RecipeDetailView(recipe: recipe)
        }
        .onAppear {
            allRecipes = JSONFileManager.load("recipes")
        }
    }
}

struct RecipesListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesListView()
    }
}
