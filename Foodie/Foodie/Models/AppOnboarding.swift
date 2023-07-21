//
//  AppOnboarding.swift
//  Foodie
//
//  Created by Iuri Ferreira on 21/07/23.
//

import Foundation

struct AppOnboarding : Identifiable {
    let id = UUID().uuidString
    var title : String
    var detail: String
    var animationName : String
}

extension AppOnboarding {
    static var data: [AppOnboarding] {
        [
            AppOnboarding(title: "Welcome to food recipes", detail: "Search, cook and enjoy freshly made food at your home. Find step by step recipes with Food Recipes App", animationName: "onboarding1"),
            AppOnboarding(title: "Pick fresh ingredients!", detail: "Best tasting food comes from fresh ingredients. Find list of ingredients with Food Recipes App", animationName: "onboarding2"),
            AppOnboarding(title: "Cook to perfection!", detail: "Delicious food takes its own time to get ready. Find list of steps to cook your food to the perfection.", animationName: "onboarding3"),
            AppOnboarding(title: "Enjoy your home made meal!", detail: "Enjoy your home cooked food with your friends and family.   ", animationName: "onboarding4"),
        ]
    }
}
