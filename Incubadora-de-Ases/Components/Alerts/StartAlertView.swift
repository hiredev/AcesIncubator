//
//  StartAlertView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

//Alert to show to the user when he answers
//a question correctly
//if you click on any part outside the alert it dismisses itself

struct StartAlertView: View {
    //Variable to show or not the alert
    @Binding var showAlert : Bool
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)){
            VStack(spacing:25){
                Image("StarXP")
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 360, height: 200, alignment: .center)
                    .padding(.top,40)
                
                Button(action: {
                    withAnimation{
                        showAlert.toggle()
                    }
                }, label: {
                    CapsuleButton(text: "Felicidades", bgColor: Color("AccentColor"), textColor: .white, buttonWidth: 320)
                })
                .padding(.vertical,20)
                
            }
            .padding(.vertical,25)
            .padding(.horizontal,30)
            .background(Color.white)
            .cornerRadius(25)
            
            Button(action: {
                withAnimation{
                    showAlert.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(Color("CustomGray"))
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
            })
            .offset(x:20,y:-20)
            
            
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

struct StartAlertView_Previews: PreviewProvider {
    static var previews: some View {
        StartAlertView(showAlert: .constant(false))
    }
}
