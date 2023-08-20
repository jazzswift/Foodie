//
//  BannerView.swift
//  Foodie
//
//  Created by Iuri Ferreira on 24/07/23.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        HStack {
            Text("🥗")
                .font(.system(size: 80))
            
            VStack(alignment: .leading, spacing: 10) {
                Text("You have, 20 recipes to try.")
                    .font(.body)
                    .foregroundColor(.black)
                
                Button {
                    
                } label: {
                    Text("See recipes")
                }
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color("lightGreen"), in: RoundedRectangle(cornerRadius: 15))
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
