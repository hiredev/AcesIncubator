//
//  SubjectsMainView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct SubjectsMainView: View {
    @State var fullscreen = false
    @State var selected = 0
    var body: some View {
        VStack{
            TitleBarView(title: "Matemática: Álgebra")
            Spacer()
            HStack{
                if !fullscreen{
                    SubjectSideBarView(selected: $selected)
                }
                SubjectContentView(fullscreen: $fullscreen, title: "1.Ejercicios de resta de dos números naturales.", text: """
                    1. Muéstrame el correo electrónico de Nikolas del mes pasado, el que habla sobre el Evento de diseño de verano en Seattle. Muéstrame el correo electrónico de Nikolas del mes pasado, el que habla sobre el Evento de diseño de verano en Seattle Seattle. Muéstrame el correo electrónico de Nikolas del mes pasado , el que habla del Summer Design Event en Seattle apsdfkpaosdfapsodjfspodfkaps \n\n
                    1. Muéstrame el correo electrónico de Nikolas del mes pasado, el que habla sobre el Evento de diseño de verano en Seattle. Muéstrame el correo electrónico de Nikolas del mes pasado, el que habla sobre el Evento de diseño de verano en Seattle Seattle. Muéstrame el correo electrónico de Nikolas del mes pasado , el que habla del Summer Design Event en Seattle apsdfkpaosdfapsodjfspodfkaps \n\n
                    1. Muéstrame el correo electrónico de Nikolas del mes pasado, el que habla sobre el Evento de diseño de verano en Seattle. Muéstrame el correo electrónico de Nikolas del mes pasado, el que habla sobre el Evento de diseño de verano en Seattle Seattle. Muéstrame el correo electrónico de Nikolas del mes pasado , el que habla del Summer Design Event en Seattle apsdfkpaosdfapsodjfspodfkaps \n\n
                    1. Muéstrame el correo electrónico de Nikolas del mes pasado, el que habla sobre el Evento de diseño de verano en Seattle. Muéstrame el correo electrónico de Nikolas del mes pasado, el que habla sobre el Evento de diseño de verano en Seattle Seattle. Muéstrame el correo electrónico de Nikolas del mes pasado , el que habla del Summer Design Event en Seattle apsdfkpaosdfapsodjfspodfkaps \n\n
                    """,image: "Video"
                    
                    )
            }
            
//            Spacer()
            FooterView(text: "Completa las secciones para ganar XP. Así podrás subir de nivel. ")
            
        }.edgesIgnoringSafeArea([.top,.bottom])
        .background(Color("BackgroundColor"))
    }
}

struct SubjectsMainView_Previews: PreviewProvider {
    static var previews: some View {
        SubjectsMainView()
    }
}
