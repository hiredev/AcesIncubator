//
//  ChatSideBarView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct ChatSideBarView: View {
    @State var search = ""
    @State var selected = 2

    var body: some View {
        VStack{
            //Image("ProfessorIcon")
            ChatSideRowView(icon: "ProfessorIcon", text: "Profesores",selected: $selected,index: 0)
            ChatSideRowView(icon: "ClassmatesIcon", text: "Compañeros",selected: $selected,index: 1)
            ChatSideRowView(icon: "FriendsIcon", text: "Amigos",selected: $selected,index: 2)
            
            Divider()
                .padding(.vertical,15)
            
            HStack{
                HStack(spacing:15){
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color("AccentColor"))
                    TextField("Buscar", text: $search)
                }
                .padding(.horizontal)
            }
            .frame(width: 380, height: 40)
            .background(Color.white)
            .cornerRadius(32)
            .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
            .padding(.vertical,15)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack{
                    ChatSingleRowView(name: "Martín Larraguibel", msg: "Reference site about Lorem IpsumioK", online: true)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                    ChatSingleRowView(name: "Martín Larraguibel", msg: "Usted: sitio de ence sobre Lorem OJO", online: false)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                    ChatSingleRowView(name: "Martín Larraguibel", msg: "Reference site about Lorem IpsumioK", online: false)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                    ChatSingleRowView(name: "Martín Larraguibel", msg: "Usted: sitio de ence sobre Lorem OJO", online: true)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                    ChatSingleRowView(name: "Martín Larraguibel", msg: "Reference site about Lorem IpsumioK", online: true)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                    ChatSingleRowView(name: "Martín Larraguibel", msg: "Reference site about Lorem IpsumioK", online: true)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                    ChatSingleRowView(name: "Martín Larraguibel", msg: "Reference site about Lorem IpsumioK", online: true)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                    ChatSingleRowView(name: "Martín Larraguibel", msg: "Reference site about Lorem IpsumioK", online: true)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                    ChatSingleRowView(name: "Martín Larraguibel", msg: "Reference site about Lorem IpsumioK", online: true)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                    ChatSingleRowView(name: "Martín Larraguibel", msg: "Reference site about Lorem IpsumioK", online: true)
                        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)

                }
                .padding(.vertical,10)
            })
            .padding(.horizontal)
            
            
        }
        .padding(.top,-10)
    }
}

struct ChatSideRowView: View{
    var icon : String
    var text : String
    @Binding var selected : Int
    var index : Int
    
    var body: some View{
        Button(action: {
            selected = index
        }, label: {
            HStack(spacing:20) {
                ZStack{
                    Image((selected == index) ? "\(icon)White" : icon)
                        .renderingMode(.original)
                }
                
                Text(text)
                    .font(Font.custom("GothamRounded-Bold", size: 19))
                    .foregroundColor(( (selected == index) ? Color.white : Color("DarkBlue")))
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 24,weight: .regular, design: .rounded))
                    .foregroundColor(Color("CustomGray"))
            }
            .padding(.horizontal)
            .frame(width:380,height:69)
            .background( (selected == index) ? Color("AccentColor"): Color.white)
            .cornerRadius(15)
            .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
        })
        
    }
}

struct ChatSingleRowView: View {
    var name : String
    var msg : String
    var online : Bool
    var body: some View{
        HStack(spacing:20) {
            Image("ProfilePicture")
                .resizable()
                .frame(width: 65, height: 65)
                .if(online){$0.overlay(Circle().fill(Color.green).frame(width: 15, height: 15).offset(x: 20, y: 25))}
            
            VStack(alignment:.leading,spacing:10){
                HStack{
                    Text(name)
                        .font(Font.custom("GothamRounded-Bold", size: 19))
                        .foregroundColor(Color("DarkBlue"))
                    Spacer()
                    Text("10:58 am")
                        .font(Font.custom("GothamRounded-Book", size: 16))
                        .foregroundColor(Color("CustomGray"))
                }
                Text(msg)
                    .font(Font.custom("GothamRounded-Book", size: 16))
                    .foregroundColor(Color("CustomGray"))
            }
        }
        .padding(.horizontal,5)
        .frame(width:370,height:80)
        .background(Color.white)
        .cornerRadius(15)
    }
}


struct ChatSideBarView_Previews: PreviewProvider {
    static var previews: some View {
        ChatSideBarView()
    }
}
