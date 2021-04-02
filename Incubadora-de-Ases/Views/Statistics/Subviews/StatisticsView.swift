//
//  StatisticsView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct StatisticsView: View {
    @State var confetti = false
    
    var body: some View {
        VStack{
            HStack(spacing:20){
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(15)
                        .frame(width: UIScreen.main.bounds.size.width / 3.5, height: 330)
                        
                    VStack{
                        Image("Thumbsup")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 82, height: 82)
                        Text("6,85")
                            .font(Font.custom("GothamRounded-Bold", size: 35))
                            .foregroundColor(Color("DarkBlue"))
                        Text("Puntuación media")
                            .font(Font.custom("GothamRounded-Bold", size: 20))
                            .foregroundColor(Color("CustomGray"))
                        
                        NavigationLink(
                            destination: StatisticsDetailView(
                                titleText: "Puntuación media",
                                data: [
                                "Historia":"7,00",
                                "Matemáticas":"7,00",
                                "Idioma":"7,00",
                                "Basicas":"7,00",
                                "Inglesa":"7,00",
                                "Economía":"7,00",
                                "Religión":"7,00",
                                "Chino":"7,00",
                                "Geometría":"7,00",
                                "Lógica":"7,00",
                                "Psicología":"7,00",
                                "Informática":"7,00",
                            ], bigText: "6,85",
                            smallText: "Puntuación media",
                            showStar: false).navigationBarHidden(true),
                            label: {
                                CapsuleButton(text: "Más detalles", bgColor: Color("AccentColor"), textColor: .white, buttonWidth: 275)
                                    .padding(.vertical,15)
                                    .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.1599999964237213)), radius:60, x:0, y:16)

                            })
                        
                    }
                }
                .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
                
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(15)
                        .frame(width: UIScreen.main.bounds.size.width / 3.5, height: 330)
                        
                    VStack{
                        Image("Thumbsup")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 82, height: 82)
                            .opacity(0.0)
                        Text("450")
                            .font(Font.custom("GothamRounded-Bold", size: 35))
                            .foregroundColor(Color("DarkBlue"))
                        Text("Horas")
                            .font(Font.custom("GothamRounded-Bold", size: 20))
                            .foregroundColor(Color("CustomGray"))
                        
                        NavigationLink(
                            destination: StatisticsDetailView(
                                titleText: "Puntos",
                                data: [
                                "Historia":"10",
                                "Matemáticas":"10",
                                "Idioma":"10",
                                "Basicas":"10",
                                "Inglesa":"10",
                                "Economía":"10",
                                "Religión":"10",
                                "Chino":"10",
                                "Geometría":"10",
                                "Lógica":"10",
                                "Psicología":"10",
                                "Informática":"10",
                            ], bigText: "450",
                            smallText: "Puntos",
                            showStar: true).navigationBarHidden(true),
                            label: {
                                CapsuleButton(text: "Más detalles", bgColor: Color("AccentColor"), textColor: .white, buttonWidth: 275)
                                    .padding(.vertical,15)
                                    .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.1599999964237213)), radius:60, x:0, y:16)

                            })
                        
                    }
                }
                .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
                .overlay(
                    Image(confetti ? "Throphy" : "Throphy2")
                            .resizable()
                            .scaledToFit()
                        .frame(width: confetti ? 290 : 170 , height: confetti ? 290 : 170)
                        .offset(x: 0, y: confetti ? -150 : -130)
                        .onTapGesture(perform: {
                            withAnimation(.default) {
                                confetti.toggle()
                            }
                        })
                )
                
                
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(15)
                        .frame(width: UIScreen.main.bounds.size.width / 3.5, height: 330)
                        
                    VStack{
                        Image("Timer")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 82, height: 82)
                        Text("100")
                            .font(Font.custom("GothamRounded-Bold", size: 35))
                            .foregroundColor(Color("DarkBlue"))
                        Text("Horas totales")
                            .font(Font.custom("GothamRounded-Bold", size: 20))
                            .foregroundColor(Color("CustomGray"))
                        
                        NavigationLink(
                            destination: StatisticsDetailView(
                                titleText: "Horas",
                                data: [
                                "Historia":"00:01:15",
                                "Matemáticas":"00:01:15",
                                "Idioma":"00:01:15",
                                "Basicas":"00:01:15",
                                "Inglesa":"00:01:15",
                                "Economía":"00:01:15",
                                "Religión":"00:01:15",
                                "Chino":"00:01:15",
                                "Geometría":"00:01:15",
                                "Lógica":"00:01:15",
                                "Psicología":"00:01:15",
                                "Informática":"00:01:15",
                            ], bigText: "100",
                            smallText: "Horas",
                            showStar: false).navigationBarHidden(true),
                            label: {
                                CapsuleButton(text: "Más detalles", bgColor: Color("AccentColor"), textColor: .white, buttonWidth: 275)
                                    .padding(.vertical,15)
                                    .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.1599999964237213)), radius:60, x:0, y:16)

                            })
                        
                    }
                }
                .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
                

            }
            .frame(height:320)
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        return StatisticsView().previewLayout(.fixed(width: 2688, height: 1242))
    }
}
