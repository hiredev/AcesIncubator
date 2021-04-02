//
//  FutureView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct FutureView : View{
    var body: some View{
        ZStack{
            VStack{
                TitleBarView(title: "Missing")
                Spacer()
                HStack{
                    Text("Future view to be implemented here")
                        .font(.system(size: 40,weight: .bold, design: .rounded))
                        .foregroundColor(Color("DarkBlue"))
                }
                Spacer()
                
                FooterView()
            }
            
        }
        .edgesIgnoringSafeArea([.bottom,.top])
        .background(Color("BackgroundColor"))
    }
}
struct FutureView_Previews: PreviewProvider {
    static var previews: some View {
        FutureView()
    }
}
