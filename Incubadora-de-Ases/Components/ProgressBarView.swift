//
//  ProgressBarView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI


//Reusable view that takes some properties and
//returns a progress bar with the provided info
struct ProgressBarView: View {
    var current : Int
    var total : Int
    var barHeight: CGFloat
    var barWidth: CGFloat
    var bgColor : Color?
    var body: some View {
        //Progress bar
        ZStack(alignment: Alignment(horizontal: .leading,vertical:.center)){
            Capsule()
                .fill(bgColor != nil ? bgColor! : Color("GrayBg").opacity(0.6))
                .frame(height:barHeight)
            
            Capsule()
                .fill(Color("AccentColor"))
                .frame(width: progress(),height:barHeight)
                .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.20000000298023224)), radius:20, x:2, y:2)
        }
        .frame(width:barWidth)
    }
    
    //Function to calculate the progress bar
    func progress()->CGFloat{
        let division = CGFloat(current) / CGFloat(total)
        let width = barWidth
        return division * width
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(current: 5, total: 10, barHeight: 20, barWidth: 200)
    }
}
