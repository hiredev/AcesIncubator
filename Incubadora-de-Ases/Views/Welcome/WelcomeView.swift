//
//  WelcomeView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI



struct WelcomeView: View {
    @State var showLogin = false
    var body: some View {
        NavigationView {
            ZStack{
                BackgroundView()
                if !showLogin{
                    OnboardingView(showLogin: $showLogin)
                } else {
                    LoginView()
                }
            }
        }
        .navigationBarHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeView()
                
        }
    }
}

public struct ColorBlended: ViewModifier {
  fileprivate var color: Color
  
  public func body(content: Content) -> some View {
    VStack {
      ZStack {
        content
        color.blendMode(.sourceAtop)
      }
      .drawingGroup(opaque: false)
    }
  }
}

extension View {
  public func blending(color: Color) -> some View {
    modifier(ColorBlended(color: color))
  }
}
