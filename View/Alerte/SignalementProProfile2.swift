//
//  SignalementProProfile2.swift
//  CyberHelp
//
//  Created by apprenant96 on 04/07/2023.
//

import SwiftUI

struct SignalementProProfile2: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

  //  var profil2: ProfileMap = ProfileMap(profilPic: "PhotoPro", prénom: "Jasmine", nom: "Lebeau", age: 42, genre: Genre.femme, telephone: "0122334455", adresse: Adresse(codePostal: "99 rue de Charonne", nomCommune: "75011 Paris"), siret: 57773082900197, email: "jasmine@gmail.com", mdp: "J4imel3sfra!ses", isPro: true, latitude: 48.8544245, longitude: 2.383752)

    var body: some View {
   // let userCoor : [ProfileMap] = [profil1, profil2]
        NavigationView {
                        ZStack{
                            Color("Neutre")
                                .edgesIgnoringSafeArea(.top)
                            VStack{
                            ScrollView{
                            HStack{
                                Image(profil2.profilPic)
                                    .resizable()
                                    .frame(width: 125.0, height: 200)
                                    .cornerRadius(7)
                                VStack{
                                    HStack{
                                        Text(profil2.prénom)
                                            .font(.body)
                                        Text(profil2.nom)
                                    }
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("Primaire"))
                                            .padding(.vertical, 1.0)
                                    Text("Psychologue ")
                                        .font(.body)
                                        .foregroundColor(Color("DeepBlue"))
                                    Text(profil2.adresse.nomCommune)
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
                                       
                                            Text(profil2.adresse.codePostal)
                                            .font(.body)
                                            .foregroundColor(Color("DeepBlue"))
                                            
                                            Text(profil2.adresse.nomCommune)
                                            .font(.body)
                                            .foregroundColor(Color("DeepBlue"))
                                    }
                                     .padding(.trailing, 20.0)
                                    
                                    HStack{
                                        Text("Tél :")
                                            .font(.body)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("Orange"))
                                       //Text("\(profil2.telephone)")
                                        Text(profil2.telephone)
                                            .font(.body)
                                            .foregroundColor(Color("DeepBlue"))
                                    }
                                    .padding(.trailing, 207.0)
                                    HStack{
                                        Text("Mail :")
                                            .font(.body)
                                            .fontWeight(.bold)
                                            .foregroundColor(Color("Orange"))
                                        Text(profil2.email)
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


struct SignalementProProfile2_Previews: PreviewProvider {
    static var previews: some View {
        SignalementProProfile2()
    }
}
