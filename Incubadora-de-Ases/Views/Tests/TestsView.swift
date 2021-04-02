//
//  TestsView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct TestsView: View {
//    let columns = [
//            GridItem(.flexible(minimum: 100), spacing: 10),
//            GridItem(.flexible(minimum: 100), spacing: 10),
//            GridItem(.flexible(minimum: 100), spacing: 10),
//            GridItem(.flexible(minimum: 100), spacing: 10)
//    ]
    let columns2 = [
        GridItem(.adaptive(minimum: 200, maximum: 600),spacing: 0),
        GridItem(.adaptive(minimum: 200, maximum: 400),spacing: 0),
        GridItem(.adaptive(minimum: 200, maximum: 400),spacing: 0),
        GridItem(.adaptive(minimum: 200, maximum: 400),spacing: 0)
    ]
    let imageNames = ["Historia","Matematicas","Idioma","Basicas", "Inglesa", "Economia","Religion","Chino","Geometria","Logica","Psicologia","Informatica"]
    let imageViews : [AnyView] = [AnyView(FutureView()),AnyView(QuestionView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView()),AnyView(FutureView())]
    
    var body: some View {
        VStack{
            TitleBarView(title: "Pruebas")
            
            LazyVGrid(columns: columns,alignment:.center, spacing: 20) {
                ForEach(imageNames.indices,id:\.self){index in
                    let image = imageNames[index]
                    NavigationLink(
                        destination: imageViews[index].navigationBarHidden(true),
                        label: {
                            SingleImageView(image: image, showStar: true, showText: true, showBar: true)

                        })
                    
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            FooterView()
            
        }
        .edgesIgnoringSafeArea([.top,.bottom])
        .background(Color("BackgroundColor"))
    }
}

struct TestsView_Previews: PreviewProvider {
    static var previews: some View {
        TestsView()
    }
}
