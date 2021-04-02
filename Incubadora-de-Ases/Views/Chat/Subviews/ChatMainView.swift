//
//  ChatMainView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct Message: Identifiable,Hashable {
    var id = UUID()
    var text : String
    var user : String
    var timeStamp: Date
}

struct ChatMainView: View {
    @Binding var fullscreen : Bool
    @State var msgs : [Message] = [Message(text: "GM Paolo, ¿cómo puedo ayudarlo hoy?", user: "Maestro",timeStamp: Date()),Message(text: "Claro, enviándolo ahora m", user: "Martin",timeStamp: Date()),Message(text: "Muéstrame el correo electrónico de Nikolas\ndel mes pasado, el que habla sobre\nel Summer Design Event en Seattle", user: "Martin",timeStamp: Date())]
    @State var currentMessage = ""
    @State var scrolled = false
    @AppStorage("current_user") var user = "Martin"
    @Binding var showAdd : Bool
    @State var showRemove = false

    var body: some View {
        ZStack{
            VStack(spacing: 0){
                HStack{
                    Image("Maestro")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .overlay(Circle().fill(Color.green).frame(width: 15, height: 15).offset(x: 20, y: 25))
                        
                    VStack(alignment:.leading,spacing:5){
                        Text("Martín Larraguibel")
                            .font(Font.custom("GothamRounded-Medium", size: 17))
                            .foregroundColor(Color("DarkBlue"))
                        
                        Text("Activa")
                            .font(Font.custom("GothamRounded-Book", size: 16))
                            .foregroundColor(Color("CustomGray"))
                    }
                    
                    
                    Spacer()
                    
                    HStack(spacing:15){
                        Button(action: {
                            showAdd.toggle()
                        }, label: {
                            Image("AddUser")
                        })
                        
                        Button(action: {
                            fullscreen.toggle()
                        }, label: {
                            Image(fullscreen ? "FullscreenColor" : "Fullscreen")
                        })
                    }
                    
                }
                .padding()
                .background(Color.white)
                .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:16, y:15)
        
                ScrollViewReader{reader in
                    
                    ScrollView{
                        
                        VStack(spacing: 15){
                            
                            ForEach(msgs,id:\.self){msg in
                                
                               ChatRow(chatData: msg)
                                .onAppear{
                                    // First Time Scroll
                                    if msg.id == self.msgs.last!.id && !scrolled{
                                        
                                        reader.scrollTo(msgs.last!.id,anchor: .bottom)
                                        scrolled = true
                                    }
                                }
                            }
                            .onChange(of: msgs, perform: { value in
                                
                                // You can restrict only for current user scroll....
                                reader.scrollTo(msgs.last!.id,anchor: .bottom)
                            })
                        }
                        .padding(.vertical)
                    }
                }
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                    .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))

                    RoundedRectangle(cornerRadius: 15)
                    .strokeBorder(Color(#colorLiteral(red: 0.18039216101169586, green: 0.24313725531101227, blue: 0.3607843220233917, alpha: 1)), lineWidth: 1.2000000476837158)
                        .opacity(0.2)
                    VStack{
                        Spacer()
                        HStack(alignment:.center){
                            TextField("Escribe tu mensaje...", text: $currentMessage)
                                .font(Font.custom("GothamRounded-Medium", size: 18))
                                .padding(.horizontal)
                            if currentMessage != ""{
                                
                                Button(action: {
                                    msgs.append(Message(text: currentMessage, user: "Martin", timeStamp: Date()))
                                    currentMessage = ""
                                }, label: {
                                    ZStack{
                                        //Rectangle 2
                                        RoundedRectangle(cornerRadius: 66)
                                            .fill(Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 1)))
                                        .frame(width: 48, height: 42)
                                        .rotationEffect(.degrees(0))
                                        Image(systemName: "arrow.up")
                                            .font(.system(size: 18))
                                            .foregroundColor(.white)
                                    }
                                }).padding(.trailing,20)
                            }
                        }
                        Spacer()
                    }
                    
                    
                }
                .frame(height: 58)
            }
        }
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
        .padding()
        .padding(.top,-10)

    }
}

struct ChatMainView_Previews: PreviewProvider {
    static var previews: some View {
        ChatMainView(fullscreen: .constant(false), showAdd: .constant(true))
    }
}


struct ChatRow: View {
    var chatData : Message
    @AppStorage("current_user") var user = "Martin"
    var body: some View {
        
        HStack(spacing: 15){
            
            // NickName View...
            
            if chatData.user != user{

                Image("Maestro")
                    .resizable()
                    .frame(width: 38, height: 38)
            }

            if chatData.user == user{Spacer(minLength: 0)}
            
            VStack(alignment: chatData.user == user ? .trailing : .leading, spacing: 5, content: {
                
                Text(chatData.text)
                    .font(Font.custom("GothamRounded-Medium", size: 17))
                    .foregroundColor(chatData.user == user ? .white : Color("DarkBlue"))
                    .padding()
                    .background(chatData.user == user ? Color("AccentColor") : Color.white)
                // Custom Shape...
                    .clipShape(ChatBubble(myMsg: chatData.user == user))
                    .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                
                Text(chatData.timeStamp,style: .time)
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(chatData.user != user ? .leading : .trailing , 10)
            })
            
            
            if chatData.user != user{Spacer(minLength: 0)}
        }
        .padding(.horizontal)
        // For SCroll Reader....
        .id(chatData.id)
    }
}
