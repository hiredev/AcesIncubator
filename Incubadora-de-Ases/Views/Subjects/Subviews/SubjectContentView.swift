//
//  SubjectContentView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct SubjectContentView: View {
    @Binding var fullscreen : Bool
    var title : String
    var text : String
    var image : String?
    var body: some View {
        ZStack{
            if fullscreen{
                BackgroundView()

            }
            VStack{
                HStack{
                    Spacer()
                    Text(title)
                        .font(Font.custom("GothamRounded-Bold", size: 24))
                        .foregroundColor(Color("DarkBlue"))
                    Spacer()
                    Button(action: {
                        fullscreen.toggle()
                    }, label: {
                        Image(fullscreen ? "FullscreenColor" : "Fullscreen")
                    })
                }
                .padding(15)
                
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing:20){
                        if let showImage = image {
                            Image(showImage)
                                .resizable()
                                .scaledToFit()
                        }
                        
                        Text(text)
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                            .font(Font.custom("GothamRounded-Book", size: 18))
                            .foregroundColor(Color("CustomGray"))
                    }
                })
                .padding()
                .if(fullscreen){$0.frame(width:600)}
                
                
                
                
            }
        }
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
        .padding(.top,15)
        .padding(.bottom,-10)
        
    }
}

struct SubjectContentView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectContentView(fullscreen: .constant(false), title: "1.Ejercicios de resta de dos números naturales.", text: "1. Muéstrame el correo electrónico de Nikolas del mes pasado, el que habla sobre el Evento de diseño de verano en Seattle. Muéstrame el correo electrónico de Nikolas del mes pasado, el que habla sobre el Evento de diseño de verano en Seattle Seattle. Muéstrame el correo electrónico de Nikolas del mes pasado , el que habla del Summer Design Event en Seattle apsdfkpaosdfapsodjfspodfkaps")
    }
}
