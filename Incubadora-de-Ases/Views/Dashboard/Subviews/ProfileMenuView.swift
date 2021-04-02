//
//  ProfileMenuView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct ProfileMenuView: View {
    @Binding var isActive : Bool
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
                VStack(alignment:.leading,spacing:10){
                    NavigationLink(
                        destination: ProfileView().navigationBarHidden(true),
                        label: {
                            Label(
                                title: { Text("Cuenta y ajustes")                .font(Font.custom("GothamRounded-Book", size: 17)) },
                                icon: {  })
                        })
                    Divider()
                    
                    NavigationLink(
                        destination: WelcomeView().navigationBarHidden(true),
                        label: {
                            Label(
                                title: { Text("Cerrar sesión")       .font(Font.custom("GothamRounded-Medium", size: 17))
                                    },
                                icon: {  })
                        })
                }
                .foregroundColor(.black)
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                .frame(width:200)
                .offset(x: (UIScreen.main.bounds.size.width / 2) - 120, y: -(UIScreen.main.bounds.size.height / 2) + 150)
            })
        })
        .frame(maxWidth:.infinity,maxHeight:.infinity)
        .background(
            Color.gray.opacity(0.45).onTapGesture {
                withAnimation{
                    isActive.toggle()
                }
            }
//            BlurView()
                
        )
    }
}

struct ProfileMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMenuView(isActive: .constant(true))
    }
}
