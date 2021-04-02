//
//  StatisticsFullView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct StatisticsFullView: View {
    var body: some View {
        VStack{
            TitleBarView(title: "Mis estadisticas")
            Spacer()
            ZStack{
                BackgroundView()
                StatisticsView()
            }
            Spacer()
            
            FooterView()
        }
        .edgesIgnoringSafeArea([.bottom,.top])
        .background(Color("BackgroundColor"))
    }
}

struct StatisticsFullView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsFullView()
    }
}
