//
//  FooterView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct FooterView: View {
    var text : String?
    var body: some View {
        HStack{

            Spacer()
            HStack{
                if let showText = text {
                    Text(showText)
                        .foregroundColor(Color("DarkBlue"))
                } else {
                    Text("Estás completamente a salvo.")
                        .foregroundColor(Color("DarkBlue"))

                    
                    Text("Lea nuestros términos y condiciones.")
                        .foregroundColor(Color("AccentColor"))
                        .underline()
                }
                
            }
            Spacer()
        }
        .font(Font.custom("GothamRounded-Medium", size: 17))
        .padding()
        .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom)
        .background(Color.white)
        .shadow(color: Color(#colorLiteral(red: 0.30588236451148987, green: 0.30980393290519714, blue: 0.4470588266849518, alpha: 0.07999999821186066)), radius:60, x:0, y:16)
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
