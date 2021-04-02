//
//  CapsuleButton.swift
//  Incubadora-de-Ases
//
//

import SwiftUI


//Reusable button that takes some properties and returns a button in the
//shape of a capsule
struct CapsuleButton : View {
    var text : String
    var bgColor : Color
    var textColor : Color
    var buttonWidth : CGFloat
    var buttonHeight : CGFloat?
    var body: some View{
        Text(text)
            .font(Font.custom("GothamRounded-Bold", size: 20))
            .foregroundColor(textColor)
            .padding(.vertical)
            .frame(width:buttonWidth)
            .if((buttonHeight != nil)){$0.frame(height:buttonHeight)}
            .background(bgColor)
            .clipShape(Capsule())
            .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.1599999964237213)), radius:60, x:0, y:16)

    }
}

struct CapsuleButton_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleButton(text: "Continuar", bgColor:Color("AccentColor"), textColor: .white, buttonWidth: 300)
    }
}
