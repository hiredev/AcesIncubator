//
//  ChatView.swift
//  Incubadora-de-Ases
//
//  Created by Alberto Juarez on 28/02/21.
//

import SwiftUI

struct ChatFullView: View {
    @State var fullscreen = false
    @State var showAdd = false
    var body: some View {
        ZStack{
            VStack{
                TitleBarView(title: "Chat")
                HStack{
                    if !fullscreen {
                        ChatSideBarView()
                            .padding(.horizontal)
                            .frame(width:400)
                    }
                    
                    ChatMainView(fullscreen: $fullscreen,showAdd: $showAdd)
                }
            }
            
            if showAdd{
                AddFriendAlertView(showAlert: $showAdd)
            }
            
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color("BackgroundColor"))
    }
}

struct ChatFullView_Previews: PreviewProvider {
    static var previews: some View {
        ChatFullView()
    }
}
