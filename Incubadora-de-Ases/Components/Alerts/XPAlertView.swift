//
//  XPAlertView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

//Alert to show when the user has gained some XP points
//if you click on any part outside the alert it dismisses itself
struct XPAlertView: View {
    //Variable to show or not the alert
    @Binding var showAlert : Bool
    
    //Variable of the text to display under the image
    var text : String
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)){
            VStack(spacing:25){
                Image("Throphy")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 380, height: 285, alignment: .center)
                
                Text(text)
                    .font(Font.custom("GothamRounded-Book", size: 20))
                    .foregroundColor(Color("DarkBlue"))
                    .multilineTextAlignment(.center)
                
                
                Button(action: {
                    withAnimation{
                        showAlert.toggle()
                    }
                }, label: {
                    CapsuleButton(text: "Continuar", bgColor: Color("AccentColor"), textColor: .white, buttonWidth: 320)
                })
                
            }
            .padding(.vertical,25)
            .padding(.horizontal,30)
            .background(Color.white)
            .cornerRadius(25)
            
            
        }
        .frame(maxWidth:.infinity,maxHeight:.infinity)
        .background(
            BlurView()
                .onTapGesture {
                    withAnimation{
                        showAlert.toggle()
                    }
                }
        )
        
    }
}

struct XPAlertView_Previews: PreviewProvider {
    static var previews: some View {
        XPAlertView(showAlert: .constant(false),text: "¡Felicidades! \n Has ganado 20 xp")
    }
}
