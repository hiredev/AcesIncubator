//
//  ProfileView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct ProfileView: View {
    @State private var notifications = false
    @State private var notificationsapp = true
    var body: some View {
        VStack{
            TitleBarView(title: "Mi perfil")
            Spacer()
            ZStack{
                BackgroundView()
                VStack(spacing:25){
                    VStack(spacing:20){
                        Text("Martín Larraguibel")
                            .font(Font.custom("GothamRounded-Bold", size: 24))

                            .foregroundColor(Color("DarkBlue"))
                        Text("13, Hombre")
                            .font(Font.custom("GothamRounded-Book", size: 17))

                            .foregroundColor(Color("CustomGray"))
                        HStack(spacing:40){
                            VStack(spacing:10){
                                Text("9")
                                    .font(Font.custom("GothamRounded-Bold", size: 24))
                                    .foregroundColor(Color("DarkBlue"))
                                Text("Class")
                                    .font(Font.custom("GothamRounded-Medium", size: 15))
                                    .foregroundColor(Color("CustomGray"))
                            }
                            Divider().frame(height: 50)
                            VStack(spacing:10){
                                Image(systemName: "star.fill")
                                    .font(.system(size: 24,weight: .bold, design: .rounded))
                                    .foregroundColor(Color("CustomYellow"))
                                
                                Text("150")
                                    .font(Font.custom("GothamRounded-Medium", size: 15))
                                    .foregroundColor(Color("CustomYellow"))
                            }
                            Divider().frame(height: 50)
                            VStack(spacing:10){
                                Text("25")
                                    .font(Font.custom("GothamRounded-Bold", size: 24))
                                    .foregroundColor(Color("DarkBlue"))
                                Text("Friends")
                                    .font(Font.custom("GothamRounded-Medium", size: 15))
                                    .foregroundColor(Color("CustomGray"))
                            }
                        }
                    }
                    .padding(.top,30)
                    .padding(30)
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
                    .overlay(Image("ProfilePicture").resizable().frame(width: 150, height: 150).offset(x: 0, y: -150).overlay(Image("EditButton").resizable().frame(width: 35, height: 35).offset(x: 45, y: -96)))
                    
                    Text("martinlarraguibel@gmail.com")
                        .font(Font.custom("GothamRounded-Book", size: 19))
                        .foregroundColor(Color("CustomGray"))
                    
                    CapsuleButton(text: "Servicio de soporte", bgColor: Color("AccentColor"), textColor: .white, buttonWidth: 350,buttonHeight: 60)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.1599999964237213)), radius:60, x:0, y:16)
                        .padding(.vertical,30)
                        
                    
                    HStack{
                        Toggle(isOn: $notifications, label: {
                            Text("Notificaciones")
                                .font(Font.custom("GothamRounded-Medium", size: 19))
                                .foregroundColor(Color("CustomGray"))
                        })
                        .toggleStyle(SwitchToggleStyle(tint: Color("AccentColor")))
                    }
                    Divider()
                    HStack{
                        Toggle(isOn: $notificationsapp, label: {
                            Text("Notificaciones App")
                                .font(Font.custom("GothamRounded-Medium", size: 19))
                                .foregroundColor(Color("CustomGray"))
                        })
                        .toggleStyle(SwitchToggleStyle(tint: Color("AccentColor")))
                    }
                }
                .frame(width:350)
            }
            Spacer()
            FooterView()
        }
        .edgesIgnoringSafeArea([.bottom,.top])
        .background(Color("BackgroundColor"))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
