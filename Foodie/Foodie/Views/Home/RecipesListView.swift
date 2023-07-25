//
//  RecipesListView.swift
//  Foodie
//
//  Created by Iuri Ferreira on 21/07/23.
//

import SwiftUI

struct RecipesListView: View {
    
    @State private var searchText = ""
    @State private var allRecipes = [Recipe]()
    
    var recipes : [Recipe] {
        if searchText.isEmpty {
            return allRecipes
        }
        return allRecipes.filter({$0.name.lowercased().contains(searchText.lowercased())})
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchView(searchText: $searchText)
                ScrollView(showsIndicators: false) {
                    LazyVStack(alignment: .leading,spacing: 10) {
                        BannerView()
                        ForEach(recipes, id:\.self) { recipe in
                            NavigationLink {
                                Text(recipe.name)
                            } label: {
                                RecipeTileView(recipe: recipe)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
            .animation(.easeInOut, value: searchText)
            .padding(.horizontal)
            .navigationTitle("🥗Recipes")
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
