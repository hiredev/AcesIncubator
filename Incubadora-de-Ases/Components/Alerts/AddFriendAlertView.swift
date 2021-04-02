//
//  AddFriendAlertView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

//Alert to show when the user tries to add someone to their friend list
//if you click on any part outside the alert it dismisses itself
struct AddFriendAlertView: View {
    //Variable to show or not the alert
    @Binding var showAlert : Bool
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)){
            VStack(spacing:25){
                Text("¿Añadir a amigos?")
                    .font(Font.custom("GothamRounded-Bold", size: 24))
                    .foregroundColor(Color("DarkBlue"))
                
                HStack{
                    Button(action: {
                        print("Si button")
                    }, label: {
                        CapsuleButton(text: "Si", bgColor: Color("AccentColor"), textColor: .white, buttonWidth: 150)
                    })
                    
                    Button(action: {
                        print("No button")
                    }, label: {
                        CapsuleButton(text: "No", bgColor: .white, textColor: Color("AccentColor"), buttonWidth: 150)
                    })
                }
                .padding(.vertical,20)
            }
            .padding(.top,20)
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

struct AddFriendAlertView_Previews: PreviewProvider {
    static var previews: some View {
        AddFriendAlertView(showAlert: .constant(true))
    }
}
