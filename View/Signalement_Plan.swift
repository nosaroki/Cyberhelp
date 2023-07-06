//
//  Signalement_Plan.swift
//  CyberHelp
//
//  Created by apprenant96 on 28/06/2023.
//

import SwiftUI

struct Signalement_Plan: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    var body: some View
    {
      //  NavigationView {
       //     ScrollView{
                ZStack{
                    Color("Neutre")
                        .edgesIgnoringSafeArea(.top)
                    VStack{
                    //(alignment: .leading)
                        ZStack{
                            Rectangle()
                                .foregroundStyle(Color("DeepBlue"))
                              //  .scaledToFit()
                                .frame(width: 377.0, height: 122)
                                .cornerRadius(10)
                                .padding()
                            Rectangle()
                                .foregroundStyle(.white)
                              //  .scaledToFit()
                                .frame(width: 375.0, height: 120)
                                .cornerRadius(10)
                               // .border(Color(red: 0.14, green: 0.202, blue: 0.327))
                             //   .cornerRadius(10)
                                .padding()
                            
                            Text("Merci d’avoir partagé ton expérience avec nous, tu seras contacté.e par un spécialiste dans les meilleurs délais")
                                .font(.body)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.14, green: 0.202, blue: 0.327))
                                .multilineTextAlignment(.center)
                                .padding(.horizontal, 25.0)
                                .padding(.vertical, 5.0)
                            //  }
                        }
                        ZStack{
                            Rectangle()
                                .cornerRadius(10)
                                .foregroundStyle(Color("Primaire"))
                            VStack{
                                Text("Les spécialistes qui pourront t’aider près de chez toi")
                                    .padding()
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.center)
                                MapView()
                            }
                        }
                    }
           // }
        }
        .navigationBarBackButtonHidden(true)
           .navigationBarItems(leading: Button(action : {
                         self.mode.wrappedValue.dismiss()
                     }){
                         Image(systemName: "chevron.left")
                         Text("Signalement")
                     })
    }
}

struct Signalement_Plan_Previews: PreviewProvider {
    static var previews: some View {
        Signalement_Plan()
    }
}
