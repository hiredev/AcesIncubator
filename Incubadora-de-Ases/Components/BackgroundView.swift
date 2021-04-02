//
//  BackgroundView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        HStack{
            Image("Background")
                .resizable()
                .scaledToFit()
            Spacer()
            Image("Background")
                .resizable()
                .scaledToFit()
                .rotationEffect(Angle(degrees: 180))
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
