//
//  SubjectSideBarView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct SubjectSideBarView: View {
    @Binding var selected: Int

    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing:25){
                ForEach(0..<7){index in
                    SingleRowView(selected: $selected,index:index, title: "\(index).Ejercicios de resta", subtitle: "El caso cuando la ecuación cuadrática")
                }
            }
        })
        .padding(15)
    }
}

struct SingleRowView: View {
    @Binding var selected: Int
    var index: Int
    var title: String
    var subtitle : String
    
    var body: some View{
        
        VStack(spacing:5) {
            Button(action:{
                selected = index
            },label:{
                HStack {
                    Image(systemName: "play.circle")
                        .font(.system(size: 50,weight: .regular, design: .rounded))
                        .foregroundColor((selected != index) ? Color("AccentColor"): Color.white)                    
                    VStack(alignment:.leading,spacing:10){
                        Text(title)
                            .font(Font.custom("GothamRounded-Bold", size: 19))
                            .foregroundColor((selected != index) ? Color("DarkBlue"): Color.white)
                        Text(subtitle)
                            .font(Font.custom("GothamRounded-Book", size: 16))
                            .foregroundColor((selected != index) ? Color("CustomGray"): Color.white)
                    }
                    Spacer()
                }
                .padding(.horizontal)
                .frame(width:380,height:88)
                .background((selected == index) ? Color("AccentColor"): Color.white)
                .cornerRadius(15)
                .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
            })
            
            
            HStack{
                Text("Ejercicio")
                    .foregroundColor((selected != index) ? Color("DarkBlue"): Color.white)
                Spacer()
                Image(systemName: "star.fill")
                    .foregroundColor(Color("CustomYellow"))
                Text("5")
                    .foregroundColor(Color("CustomYellow"))
            }
            .font(Font.custom("GothamRounded-Bold", size: 19))
            .padding(.horizontal)
            .frame(height:53)
            .background((selected == index) ? Color("AccentColor"): Color.white)
            .cornerRadius(15)
            .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
        }
        .frame(width:380)
        .padding(.bottom,15)

    }
}

struct SubjectSideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectSideBarView(selected: .constant(1))
        //SingleRowView(selected: .constant(true))
    }
}
