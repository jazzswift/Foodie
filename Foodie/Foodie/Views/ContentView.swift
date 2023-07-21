//
//  ContentView.swift
//  Foodie
//
//  Created by Iuri Ferreira on 21/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showOnboarding = true
    
    var body: some View {
        if showOnboarding {
            AppOnboardingView(showOnboarding: $showOnboarding)
        } else {
            RecipesListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
