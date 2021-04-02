//
//  ProfileBarView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

//Top bar menu item for the user name, user picture, as well as buttons
//for it to go to its account or logout

struct ProfileBarView: View {
    @Binding var isActive : Bool
    var body: some View {
        ZStack {
            HStack{
                HStack(spacing:5){
                    Image("ProfilePicture")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .overlay(Circle().fill(Color.green).frame(width: 10, height: 10).offset(x: 13, y: 13))
                    Text("Martín Larraguibel")
                        .font(Font.custom("GothamRounded-Medium", size: 17))
                        .foregroundColor(Color("DarkBlue"))
                }
                
                
                Rectangle().fill(Color("CustomGray")).frame(width: 1, height: 25)
                
                Button(action: {
                    isActive.toggle()
                }, label: {
                    ZStack{
                        Circle()
                            .fill(Color.white)
                        Image(systemName: "power")
                            .font(.system(size: 17,weight: .regular, design: .rounded))
                            .padding(6)
                    }
                    .frame(width: 20, height: 20)
                    .padding()
                    .shadow(radius: 0.5)
                })
            }
        }
    }
}

struct ProfileBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBarView(isActive: .constant(false))
    }
}
