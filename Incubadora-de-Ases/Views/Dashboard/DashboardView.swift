//
//  DashboardView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct DashboardView: View {
    @State var isActive = false
    var body: some View {
        ZStack {
            VStack{
                MainTopBarView(isActive: $isActive)
                
                LazyVGrid(columns: columns,alignment:.center, spacing: 20) {
                    ForEach(sampleDashboard.imageFiles.indices,id:\.self){index in
                        let image = sampleDashboard.imageFiles[index]
                        NavigationLink(
                            destination: sampleDashboard.imageViews[index].navigationBarHidden(true),
                            label: {
                                SingleImageView(image: image, showStar: (image == "Calendar" || image == "Dibujo") ? false : true, showText: (image == "Calendar" || image == "Dibujo") ? false : true, showBar: false)

                            })
                        
                    }
                }
                .padding(.horizontal)
                
                Spacer()
                
            }
            
            
            if isActive{
                ProfileMenuView(isActive: $isActive)
        
            }
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color("BackgroundColor"))
    }
}





struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
