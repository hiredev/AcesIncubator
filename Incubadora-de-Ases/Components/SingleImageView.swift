//
//  SingleImageView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct SingleImageView : View {
    var image : String
    var showStar : Bool
    var showText : Bool
    var showBar : Bool
    var text: String?
    var body: some View{
        ZStack{
            Image(image)
                .resizable()
            LinearGradient(gradient: Gradient(colors: [.white,.black]), startPoint: .top, endPoint: .bottom).opacity(0.15)
        }
        .if(showText){$0.overlay(
            VStack(alignment:.leading){
                Text(text != nil ? text! : image)
                    .font(Font.custom("GothamRounded-Bold", size: 19))
                    .foregroundColor(.white)
                    
                if showBar{
                    ProgressBarView(current: 5, total: 10, barHeight: 8, barWidth: 200,bgColor: Color.white)
                }
            }
            .offset(y:-10)
            .padding(.horizontal)
            

        ,alignment: .bottomLeading)}
        .if(showStar){$0.overlay(
            HStack(spacing:0){
                Image(systemName: "star.fill")
                    .foregroundColor(Color("CustomYellow"))
                if showBar{
                    Text("5/10")
                        .foregroundColor(.white)
                }
            }.font(Font.custom("GothamRounded-Bold", size: 19))
            .padding(.horizontal)
            .offset(x:0,y:showBar ? -30 : -10)
            //.offset(x:-40,y:showBar ? -60 : -40)
        ,alignment:.bottomTrailing)}
        .frame(height:197)
        .cornerRadius(15)
        
    }
}

extension View {
    func innerShadow(color: Color, radius: CGFloat = 0.1) -> some View {
        modifier(InnerShadow(color: color, radius: min(max(0, radius), 1)))
    }
}

private struct InnerShadow: ViewModifier {
    var color: Color = .gray
    var radius: CGFloat = 0.1

    private var colors: [Color] {
        [color.opacity(1.0), color.opacity(0.0), .clear]
    }

    func body(content: Content) -> some View {
        GeometryReader { geo in
            content
                .overlay(LinearGradient(gradient: Gradient(colors: self.colors), startPoint: .top, endPoint: .bottom)
                    .frame(height: self.radius * self.minSide(geo)),
                         alignment: .top)
                .overlay(LinearGradient(gradient: Gradient(colors: self.colors), startPoint: .bottom, endPoint: .top)
                    .frame(height: self.radius * self.minSide(geo)),
                         alignment: .bottom)
                .overlay(LinearGradient(gradient: Gradient(colors: self.colors), startPoint: .leading, endPoint: .trailing)
                    .frame(width: self.radius * self.minSide(geo)),
                         alignment: .leading)
                .overlay(LinearGradient(gradient: Gradient(colors: self.colors), startPoint: .trailing, endPoint: .leading)
                    .frame(width: self.radius * self.minSide(geo)),
                         alignment: .trailing)
        }
    }

    func minSide(_ geo: GeometryProxy) -> CGFloat {
        CGFloat(3) * min(geo.size.width, geo.size.height) / 2
    }
}

struct SingleImageView_Previews: PreviewProvider {
    static var previews: some View {
        SingleImageView(image: "Wiki", showStar: true, showText: true, showBar: true,text:"Otro")
    }
}
