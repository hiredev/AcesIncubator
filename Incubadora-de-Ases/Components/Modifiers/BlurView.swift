//
//  BlurView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

//Modifier that serves as a background for the alerts to make the back of it blury
struct BlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterial))
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        //
    }
}
