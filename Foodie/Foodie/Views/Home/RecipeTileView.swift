//
//  RecipeTileView.swift
//  Foodie
//
//  Created by Iuri Ferreira on 24/07/23.
//

import SwiftUI

struct RecipeTileView: View {
    
    var recipe : Recipe
    
    @ViewBuilder
    private var recipeImage: some View {
        Image(recipe.imageName)
            .resizable()
            .scaledToFill()
            .overlay(LinearGradient(colors: [.black.opacity(0.5), .clear, .black.opacity(0.5)], startPoint: .leading, endPoint: .trailing))
            .frame(width: UIScreen.main.bounds.width * 0.9, height: 300)
            .clipped()
    }
    
    @ViewBuilder
    private var recipeLabel: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 20) {
                Text(recipe.name)
                    .font(.title)
                
                Text("\(recipe.cookTime) | \(recipe.servings) servings")
                    .foregroundColor(.secondary)
            }
            .frame(maxWidth: UIScreen.main.bounds.width * 0.8, alignment: .leading)
        }
        .padding()
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 20))
        
    }
    
    var body: some View {
        ZStack {
            recipeImage
                .cornerRadius(12)
            
            VStack(alignment: .leading) {
                Text("Dinner")
                    .padding(.horizontal)
                    .padding(.vertical,10)
                    .background(.thinMaterial)
                    .clipShape(Capsule())
                
                Spacer()
                recipeLabel
            }
            .padding()
        }
    }
}

struct RecipeTileView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTileView(recipe: Recipe.sampleData[0])
    }
}
