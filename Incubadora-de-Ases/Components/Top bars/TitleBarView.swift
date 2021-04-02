//
//  TitleBarView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

//Top bar menu for most of the views
//it includes: a back button and the title on the center
struct TitleBarView: View {
    //Helper to go back to the previous page
    @Environment(\.presentationMode) var presentationMode
    
    //Title of the view
    var title : String
    var body: some View {
        ZStack{
            HStack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .padding(12)
                        .foregroundColor(Color("DarkBlue"))
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(radius: 0.5)
                    
                })
                Spacer()
            }
            
            HStack{
                Spacer()
                Text(title)
                    .font(Font.custom("GothamRounded-Bold", size: 19))

                    .foregroundColor(Color("DarkBlue"))
                Spacer()
            }
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
        .background(Color.white)
        .shadow(color: Color(#colorLiteral(red: 0.30588236451148987, green: 0.30980393290519714, blue: 0.4470588266849518, alpha: 0.07999999821186066)), radius:60, x:0, y:16)

    }
}

struct TitleBarView_Previews: PreviewProvider {
    static var previews: some View {
        TitleBarView(title: "Asignaturas")
    }
}
