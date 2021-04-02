//
//  MainTopBarView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI


//Top bar menu for the main view
//it includes: search bar, progress bar, throphy image with xp and the profile subview
struct MainTopBarView: View {
    @Binding var isActive : Bool
    @State var search = ""
    
    var body: some View {
        HStack(spacing:20){
            HStack{
                HStack(spacing:15){
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color("AccentColor"))
                    TextField("¿Qué estás buscando?", text: $search)
                        .font(Font.custom("GothamRounded-Light", size: 18))
                }
                .padding(.horizontal)
            }
            .frame(width: 355, height: 35)
            .background(Color.white)
            .cornerRadius(32)
            .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.1599999964237213)), radius:60, x:0, y:16)

//            Spacer()

            NavigationLink(
                destination: AchievementsView().navigationBarHidden(true),
                label: {
                    HStack(spacing:5){
                        ProgressBarView(current: 5, total: 10, barHeight: 10,barWidth: 300)
                        
                        Image("Throphy2")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("45")
                            .font(Font.custom("GothamRounded-Medium", size: 16))
                            .foregroundColor(Color("CustomYellow"))
                    }
                })
            
            Spacer()
            ProfileBarView(isActive: $isActive).padding(.leading,15)
        }
        .padding(.top,15)
        .padding(.horizontal)
        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
        .background(Color("BackgroundColor"))
        .shadow(color: Color(#colorLiteral(red: 0.30588236451148987, green: 0.30980393290519714, blue: 0.4470588266849518, alpha: 0.07999999821186066)), radius:60, x:0, y:16)

    }
}

struct MainTopBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTopBarView(isActive: .constant(false))
    }
}
