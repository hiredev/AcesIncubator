//
//  SubjectsView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct SubjectsGridView: View {
    
    var grid : Grid
    
    var body: some View {
        VStack{
            TitleBarView(title: "Asignaturas")
            Spacer()
            
            LazyVGrid(columns: columns,alignment:.center, spacing: 20) {
                ForEach(grid.imageFiles.indices,id:\.self){index in
                    let image = grid.imageFiles[index]
                    NavigationLink(
                        destination: grid.imageViews[index].navigationBarHidden(true),
                        label: {
                            SingleImageView(image: image, showStar: false, showText: true, showBar: false, text: grid.imageNames != nil ? grid.imageNames![index] : image)

                        })
                    
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            FooterView(text: "¡Avanza en tus cursos para obtener más puntos!")
            
        }.edgesIgnoringSafeArea([.top,.bottom])
        .background(Color("BackgroundColor"))
    }
}

struct SubjectsGridView_Previews: PreviewProvider {
    static var previews: some View {
        
        SubjectsGridView(grid: sampleSubjects)
    }
}
