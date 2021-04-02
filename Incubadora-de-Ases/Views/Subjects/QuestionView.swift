//
//  QuestionView.swift
//  Incubadora-de-Ases
//
//

import SwiftUI

struct QuestionView: View {
    @State var selectedOption = ""
    var options = ["130","90","30","10"]
    var correctOption = "130"
    @State var answered = false
    @State var correct = false
    @State var showAlert = false
    
    var body: some View {
        
        ZStack {
            VStack{
                TitleBarView(title: "Matemáticas")
                Spacer()
                ZStack {
                    BackgroundView()
                    VStack(alignment:.center){
                        HStack(spacing:15){
                            ProgressBarView(current: 8, total: 10, barHeight: 15,barWidth: 650)
                            Text("8/10")
                                .font(Font.custom("GothamRounded-Bold", size: 20))
                                .foregroundColor(Color("GrayBg"))
                            
                        }
                        
                        Text("Resolver el problema")
                            .font(Font.custom("GothamRounded-Bold", size: 24))
                            .foregroundColor(Color("DarkBlue"))
                            .padding(.vertical,25)
                        
                        VStack(spacing:60){
                            
                            HStack(spacing:20) {
                                Text("13•(-2+4)=")
                                    .foregroundColor(Color("DarkBlue"))
                                
                                ZStack {
                                    Text(selectedOption)
                                        .foregroundColor((answered && !correct) ? Color("CustomRed") : Color("AccentColor"))
                                        .if(answered && !correct){$0.strikethrough()}
                                        
                                }
                                .frame(width: 176, height: 97)
                                .background(Color.white)
                                .cornerRadius(20)
                                .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
                            }
                            .font(Font.custom("GothamRounded-Bold", size: 80))
                            
                            
                            
                            HStack(spacing:20){
                                ForEach(options,id:\.self){option in
                                    Button(action: {
                                        selectedOption = option
                                        answered = false
                                        correct = false
                                    }, label: {
                                        Text(option)
                                            .font(Font.custom("GothamRounded-Bold", size: 40))
                                            .frame(width:148,height:88)
                                            .foregroundColor(selectedOption != option ? Color("DarkBlue") : Color("AccentColor"))
                                            .background(selectedOption != option ? Color.white : Color(#colorLiteral(red: 0.8980392217636108, green: 0.8627451062202454, blue: 1, alpha: 1)))
                                            .cornerRadius(20)
                                            .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.05999999865889549)), radius:24, x:8, y:8)
                                        
                                    })
                                    
                                }
                            }
                            
                            if answered && correct {
                                Text("¡Correcto!")
                                    .font(Font.custom("GothamRounded-Bold", size: 24))
                                    .foregroundColor(Color("AccentColor"))
                            } else if answered && !correct {
                                Text("¡Incorrecto!")
                                    .font(Font.custom("GothamRounded-Bold", size: 24))
                                    .foregroundColor(Color("CustomRed"))
                            }
                            
                            Button(action: {
                                answered.toggle()
                                if selectedOption == correctOption {
                                    correct = true
                                    withAnimation{
                                        showAlert.toggle()
                                    }
                                }
                            }, label: {
                                CapsuleButton(text: "Verificar", bgColor: (answered && !correct) ? Color("CustomRed") : Color("AccentColor"), textColor: .white, buttonWidth: 700,buttonHeight:60)
                                    .shadow(color: Color(#colorLiteral(red: 0.43921568989753723, green: 0.2549019753932953, blue: 0.9333333373069763, alpha: 0.1599999964237213)), radius:60, x:0, y:16)

                            })
                        }
                        
                        
                        
                    }
                    
                }
                
                Spacer()
                
                FooterView()
                
            }
            .edgesIgnoringSafeArea([.top,.bottom])
            .background(Color("BackgroundColor"))
            
            if showAlert{
                StartAlertView(showAlert: $showAlert)
            }
        }
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
