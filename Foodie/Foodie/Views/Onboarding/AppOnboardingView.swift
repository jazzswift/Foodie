//
//  AppOnboardingView.swift
//  Foodie
//
//  Created by Iuri Ferreira on 21/07/23.
//

import SwiftUI

struct AppOnboardingView: View {
    
    @Binding var showOnboarding : Bool
    
    var steps = AppOnboarding.data
    
    @State private var selection = 0
    
    var body: some View {
        VStack {
            TabView(selection: $selection) {
                ForEach(0..<steps.count, id:\.self) { index in
                    VStack(spacing:0) {
                        Spacer()
                        Text(steps[index].title)
                            .font(.largeTitle)
                        Rectangle()
                            .fill(Color.secondary.opacity(0.2))
                            .frame(height: 1)
                        
                        VStack(alignment: .leading) {
                            LottieView(name: steps[index].animationName)
                                .scaledToFit()
                            
                            Text(steps[index].detail)
                        }
                        .padding()
                        
                        Spacer()
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            HStack {
                Spacer()
                Button {
                    if selection == steps.count - 1 {
                        selection+=1
                    } else {
                        showOnboarding.toggle()
                    }
                } label: {
                    if selection == steps.count - 1 {
                        Image(systemName: "checkmark.circle")
                            .font(.largeTitle)
                    } else {
                        Image(systemName: "chevron.right.circle")
                            .font(.largeTitle)
                    }
                }
                .padding()
            }
        }
    }
}

struct AppOnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        AppOnboardingView(showOnboarding: .constant(false))
    }
}
