//
//  LottieView.swift
//  Foodie
//
//  Created by Iuri Ferreira on 21/07/23.
//

import Lottie
import SwiftUI

struct LottieView : UIViewRepresentable {
    
    typealias UIViewType = UIView
    
    var name = ""
    var loopMode : LottieLoopMode = .loop
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = LottieAnimationView()
        let animation = LottieAnimation.named(name)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
        
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {}
    
}
