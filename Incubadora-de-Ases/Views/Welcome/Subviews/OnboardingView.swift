//
//  OnboardingView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct OnboardingView: View {
    @Binding var showLogin : Bool
    var body: some View {
        VStack(spacing:25){
            Image("Onboarding")
                .resizable()
                .scaledToFit()
                .frame(width: 420, height: 405)
            
            
            Text("Empezar a aprender")
                .font(Font.custom("GothamRounded-Bold", size: 24))
                .foregroundColor(Color("DarkBlue"))
            
            Text("¡Bienvenido a Incubadora de Ases! \n Estás a punto de empezar en un nuevo mundo de aprendizaje")
                .font(Font.custom("GothamRounded-Book", size: 18))
                .foregroundColor(Color("CustomGray"))
                .multilineTextAlignment(.center)
                .lineLimit(2)
            
            Button(action: {
                showLogin.toggle()
            }, label: {
                CapsuleButton(text: "Empezar", bgColor: Color("AccentColor"), textColor: .white, buttonWidth: 327, buttonHeight: 58)
                    .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.1599999964237213)), radius:60, x:0, y:16)

            })
            
            Spacer()
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(showLogin: .constant(false))
    }
}
