//
//  AchievementsView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct AchievementsView: View {
    @State var isActive = false
    var body: some View {
        ZStack {
            VStack{
                XPDetailBarView(isActive: $isActive)
                
                LazyVGrid(columns: columns,alignment:.center, spacing: 10) {
                    ForEach(sampleAchievments.imageFiles.indices,id:\.self){index in
                        let image = sampleAchievments.imageFiles[index]
                        NavigationLink(
                            destination: sampleAchievments.imageViews[index].navigationBarHidden(true),
                            label: {
                                SingleImageView(image: image, showStar: false, showText: true, showBar: false, text: sampleAchievments.imageNames![index])

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

struct AchievementsView_Previews: PreviewProvider {
    static var previews: some View {
        AchievementsView()
    }
}
