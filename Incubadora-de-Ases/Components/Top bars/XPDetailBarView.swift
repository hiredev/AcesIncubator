//
//  XPDetailBarView.swift
//  Incubadora-de-Ases
//
//  Created by Alberto Juarez on 27/02/21.
//

import SwiftUI

//Top bar menu for the detail xp view
//it includes: a back button, progress bar, thophy, xp, a text to
//see how manny xp you need to go to the next level andprofile subview
struct XPDetailBarView: View {
    @Binding var isActive : Bool
    //Helper to go back to the previous page
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        HStack(spacing:20){
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "chevron.left")
                    
                    .foregroundColor(Color("DarkBlue"))
                    .background(Color.white)
                    .padding()
                    
                    .clipShape(Circle())
                    
            })
            
            HStack{
                ProgressBarView(current: 5, total: 10, barHeight: 10,barWidth: 300)
                
                Image("Throphy2")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("45")
                    .font(Font.custom("GothamRounded-Medium", size: 16))

                    .foregroundColor(Color("CustomYellow"))

                Text("300 xp más para subir de nivel")
                    .font(Font.custom("GothamRounded-Medium", size: 16))
                    .foregroundColor(Color("AccentColor"))
            }
            
            
            
            Spacer()
            
            ProfileBarView(isActive: $isActive).padding(.leading,15)
        }
        .shadow(color: Color(#colorLiteral(red: 0.30588236451148987, green: 0.30980393290519714, blue: 0.4470588266849518, alpha: 0.07999999821186066)), radius:60, x:0, y:16)
        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
        .background(Color.white)
    }
}

struct XPDetailBarView_Previews: PreviewProvider {
    static var previews: some View {
        XPDetailBarView(isActive: .constant(false))
    }
}
