//
//  LoginView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct LoginView: View {
    @State var userName = ""
    @State var password = ""
    @State var submitted = false
    @State var wrong = false
    @State var selectedTag: String?

    
    var body: some View {
        VStack(spacing:70){
            VStack(spacing:20){
                Text("¡Te damos la bienvenida!")
                    .font(Font.custom("GothamRounded-Bold", size: 24))
                    .foregroundColor(Color("DarkBlue"))
                
                Text("Ingresa a tu cuenta")
                    .font(Font.custom("GothamRounded-Medium", size: 17))
                    .foregroundColor(Color("CustomGray"))
                
                VStack(spacing:20){
                    HStack{
                        HStack(spacing:15){
                            Image(systemName: "phone")
                            TextField("Nombre de usuario", text: $userName)
                                .font(Font.custom("GothamRounded-Book", size: 17))
                        }
                        .padding(.horizontal)
                    }
                    .frame(width: 327, height: 56)
                    .background(Color.white)
                    .cornerRadius(32)
                    .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
                    
                    HStack{
                        HStack(spacing:15){
                            Image(systemName: "lock")
                            SecureInputView("Contraseña", text: $password)
                                .font(Font.custom("GothamRounded-Book", size: 17))
                                .if((submitted && wrong)){$0.foregroundColor(Color("CustomRed"))}
                                
                        }
                        .padding(.horizontal)
                    }
                    .frame(width: 327, height: 56)
                    .background(Color.white)
                    .cornerRadius(32)
                    .if(!submitted){$0.shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)}
                    .if(submitted && wrong){$0.shadow(color:Color("CustomRed"),radius: 2)}
                    

                    
                    
                    
                    
                }
                
                Text("¿Olvidaste tu contraseña?")
                    .font(Font.custom("GothamRounded-Medium", size: 16))
                    .foregroundColor(Color("DarkBlue"))
            }
            
            
            
            VStack(spacing:30){
                
                if submitted && wrong {
                    HStack{
                        Image(systemName: "xmark")
                            .padding(8)
                            .background(Color("CustomRed").opacity(0.145))
                            .clipShape(Circle())
                        
                        Text("Incorrect login or password")
                    }
                    .font(Font.custom("GothamRounded-Medium", size: 16))
                    .foregroundColor(Color("CustomRed"))
                }
                
                
                Button(action: {
                    withAnimation{
                        submitted.toggle()
                        if password != "hola"{
                            wrong = true
                        } else {
                            self.selectedTag = "xx"
                        }
                    }
                }, label: {
                    CapsuleButton(text: "Ingresa", bgColor: Color("AccentColor"), textColor: .white, buttonWidth: 327, buttonHeight: 58)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.1599999964237213)), radius:60, x:0, y:16)
                })
                .background(
                    NavigationLink(
                        destination: DashboardView().navigationBarHidden(true),
                        tag: "xx",
                        selection: $selectedTag,
                        label: { EmptyView() }
                    )
                )
                
                VStack {
                    Text("Estás completamente a salvo.")
                        .font(Font.custom("GothamRounded-Medium", size: 16))

                        .foregroundColor(Color("DarkBlue"))
                    
                    Text("Lea nuestros términos y condiciones.")
                        .font(Font.custom("GothamRounded-Medium", size: 16))
                        .foregroundColor(Color("AccentColor"))
                        .underline()
                }
                
                
            }
            
            
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
