//
//  SignalementProProfile.swift
//  CyberHelp
//
//  Created by apprenant96 on 30/06/2023.
//

import SwiftUI
import CoreLocation

struct SignalementProProfile: View {
    let PictPro = "PhotoPro"
    var body: some View {
        NavigationView {
                ZStack{
                    Color("Neutre")
                        .edgesIgnoringSafeArea(.top)
                    VStack{
                    ScrollView{
                    HStack{
                        Image("PhotoPro")
                            .resizable()
                            .frame(width: 125.0, height: 200)
                            .cornerRadius(7)
                        VStack{
                            Text("Jasmine Lebeau")
                                .fontWeight(.bold)
                                .foregroundColor(Color("Primaire"))
                                .padding(.vertical, 3.0)
                            Text("Psychologue ")
                                .font(.callout)
                                .foregroundColor(Color("DeepBlue"))
                            Text("France - Paris")
                                .font(.footnote)
                                .foregroundColor(Color.gray)
                                .padding(.vertical, 3.0)
                            Text("Salut, je suis passionnée par mon métier. Je suis là pour t’écouter et t’aider. N’hésitez pas de me contacter.")
                                .font(.footnote)
                                .foregroundColor(Color("DeepBlue"))
                                .padding(.top)
                        }
                        }
                    .padding()
                    .padding(.top, 100.0)
                        VStack{
                            HStack{
                                Text("Adresse :")
                                    .font(.callout)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Orange"))
                                Text("99 Rue de Charonne - Paris 11")
                                    .font(.callout)
                                    .foregroundColor(Color("DeepBlue"))
                                    .padding(.trailing, 50.0)
                            }
                            HStack{
                                Text("Tél :")
                                    .font(.callout)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Orange"))
                                Text("01 22 33 44 55")
                                    .font(.callout)
                                    .foregroundColor(Color("DeepBlue"))
                                    .padding(.trailing, 200.0)
                            }
                            HStack{
                                Text("Mail :")
                                    .font(.callout)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Orange"))
                                Text("jasmine@gmail.com")
                                    .font(.callout)
                                    .foregroundColor(Color("DeepBlue"))
                                    .padding(.trailing, 155.0)
                            }
                            NavigationLink(destination: Signalement_Plan()){
                                Text("Envoyer un message")
                            .frame(width: 250, height: 50)
                            .background(Color(red: 0.217, green: 0.632, blue: 0.792))
                            .buttonStyle(.bordered)
                            .cornerRadius(7)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.top, 150.0)
                          
                            }
                        }
                    }
                }
            }
        }
    }
}

struct SignalementProProfile_Previews: PreviewProvider {
    static var previews: some View {
        SignalementProProfile()
    }
}
