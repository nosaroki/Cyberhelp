//
//  SignalementProProfile.swift
//  CyberHelp
//
//  Created by apprenant96 on 30/06/2023.
//

import SwiftUI
import CoreLocation

struct SignalementProProfile: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        // let userCoor : [ProfileMap] = [profil1, profil2]
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
                                Image(profil1.profilPic)
                                    .resizable()
                                    .frame(width: 125.0, height: 200)
                                    .cornerRadius(7)
                                VStack{
                                    HStack{
                                        Text(profil1.prénom)
                                            .font(.body)
                                        Text(profil1.nom)
                                    }
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Primaire"))
                                    .padding(.vertical, 1.0)
                                    Text("Psychologue ")
                                        .font(.body)
                                        .foregroundColor(Color("DeepBlue"))
                                    Text(profil1.adresse.nomCommune)
                                        .font(.footnote)
                                        .foregroundColor(Color.gray)
                                        .padding(.vertical, 1.0)
                                    Text("Salut, je suis passionnée par mon métier. Je suis là pour t’écouter et t’aider. N’hésitez pas de me contacter.")
                                        .font(.body)
                                        .foregroundColor(Color("DeepBlue"))
                                        .padding(.top, 1.0)
                                }
                            }
                            .padding()
                            .padding(.top, 20.0)
                            VStack{
                                HStack{
                                    Text("Adresse:")
                                        .font(.body)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("Orange"))
                                    
                                    Text(profil1.adresse.codePostal)
                                        .font(.body)
                                        .foregroundColor(Color("DeepBlue"))
                                    
                                    Text(profil1.adresse.nomCommune)
                                        .font(.body)
                                        .foregroundColor(Color("DeepBlue"))
                                }
                                .padding(.trailing, 70.0)
                                
                                HStack{
                                    Text("Tél :")
                                        .font(.body)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("Orange"))
                                    //Text("\(profil1.telephone)")
                                    Text(profil1.telephone)
                                        .font(.body)
                                        .foregroundColor(Color("DeepBlue"))
                                }
                                .padding(.trailing, 207.0)
                                HStack{
                                    Text("Mail :")
                                        .font(.body)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("Orange"))
                                    Text(profil1.email)
                                        .font(.body)
                                        .foregroundColor(Color("DeepBlue"))
                                }
                                
                                .padding(.trailing, 144.0)
                                //   NavigationLink(destination: //Signalement_Plan()){
                                Text("Envoyer un message")
                                    .frame(width: 250, height: 50)
                                    .background(Color(red: 0.217, green: 0.632, blue: 0.792))
                                    .buttonStyle(.bordered)
                                    .cornerRadius(7)
                                    .foregroundColor(.white)
                                    .fontWeight(.bold)
                                    .padding(.top, 75.0)
                                
                                // }
                            }
                        }
                    }
                }
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
}

struct SignalementProProfile_Previews: PreviewProvider {
    static var previews: some View {
        SignalementProProfile()
    }
}
