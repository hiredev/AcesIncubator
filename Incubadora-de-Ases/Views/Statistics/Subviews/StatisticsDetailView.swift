//
//  DashboardView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct StatisticsDetailView: View {
    var titleText : String
    var data : [String:String]
    var bigText : String
    var smallText : String
    var showStar : Bool

    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
    ]
    var body: some View {
        VStack{
            
            
            
            TitleBarView(title: titleText)
                        
            ZStack{
                BackgroundView()
                
                VStack(spacing:30) {
                    VStack(spacing:10){
                        Text(bigText)
                            .font(Font.custom("GothamRounded-Bold", size: 40))
                            .foregroundColor(showStar ? Color("CustomYellow") : Color("DarkBlue"))
                        Text(smallText)
                            .font(Font.custom("GothamRounded-Bold", size: 24))
                            .foregroundColor(Color("CustomGray"))

                    }
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(Array(data.keys), id: \.self) { key in
                            VStack(spacing:20){
                                Text(key)
                                HStack{
                                    if showStar{
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color("CustomYellow"))
                                    }
                                    Text(data[key]!)
                                        .foregroundColor(showStar ? Color("CustomYellow") : Color("AccentColor"))
                                }
                                
                            }
                            .font(Font.custom("GothamRounded-Bold", size: 24))
                            .frame(height:120)
                            .frame(maxWidth:.infinity)
                            .background(Color.white)
                            .cornerRadius(20)
                            .padding(.horizontal,5)
                            .shadow(color: Color(#colorLiteral(red: 0.800000011920929, green: 0.800000011920929, blue: 0.800000011920929, alpha: 0.23999999463558197)), radius:32, x:0, y:4)
                        }
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                }
                .padding(.top,15)
            }
            
            Spacer()
            
            FooterView()
            
        }
        .edgesIgnoringSafeArea([.bottom,.top])
        .background(Color("BackgroundColor"))
        
    }
}

struct StatisticsDetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        let grades : [String:String] = [
            "Historia":"7.0",
            "Matemáticas":"7.0",
            "Idioma":"7.0",
            "Basicas":"7.0",
            "Inglesa":"7.0",
            "Economía":"7.0",
            "Religión":"7.0",
            "Chino":"7.0",
            "Geometría":"7.0",
            "Lógica":"7.0",
            "Psicología":"7.0",
            "Informática":"7.0",
        ]
        return StatisticsDetailView(titleText: "Puntuación media", data: grades, bigText: "6,85", smallText: "Puntuación media", showStar: false).previewLayout(.fixed(width: 2688, height: 1242))
    }
}
