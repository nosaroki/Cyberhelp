//
//  ProfilUView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct ProfilPView: View {
    
    @EnvironmentObject var profileVM: ListesDesProfiles

    
    var email : String
    var mdp : String
    
    @State private var selectedTopicProfil : TopicOptionProfilP = .profil
    
    @ViewBuilder
    
    var body: some View {
        ZStack{
            Color("Neutre").edgesIgnoringSafeArea(.top)
            ZStack{
                
                    VStack {
                        Picker((""), selection: $selectedTopicProfil) {
                            ForEach(TopicOptionProfilP.allCases, id:\ .self) { topic in
                                Text(topic.rawValue)
                            }
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding()
                    .foregroundColor(Color("DeepBlue"))
                    ScrollView{
                        
                        // CODE POUR AFFICHER LE PROFIL DANS MA BASE DE DONNEES QUI CORRESPOND A L'EMAIL & MDP
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 350, height: 280)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                                            
                            if let profile = profileVM.monProfil{
                                    VStack {
                                        HStack{
                                            
                                            Image(uiImage: UIImage(data: profile.profilPic  ?? Data()) ?? UIImage())
                                                .resizable()
                                                .frame(width: 150, height: 200)
                                                .foregroundColor(Color("DeepBlue"))
                                                .cornerRadius(20)
                                            
                                            VStack(alignment: .leading){
                                                VStack(alignment:.leading){
                                                    HStack{
                                                        
                                                        Text(profile.prenom ?? " ")
                                                            .font(.title2)
                                                            .foregroundColor(Color("DeepBlue"))
                                                        //                                                            Text(" - \(profile.age) ans")
                                                        //                                                                .font(.title3)
                                                        //                                                                .foregroundColor(Color("DeepBlue"))
                                                    }.padding(.bottom)
                                                    Text(profile.prenom ?? " ")
                                                        .font(.title2)
                                                        .foregroundColor(Color("DeepBlue"))
//                                                    Text(" - \(profile.age) ans")
//                                                        .font(.title3)
//                                                        .foregroundColor(Color("DeepBlue"))
                                                }.padding(.bottom)
                                                
                                                Text(profile.adresse ?? " ")
                                            }
                                            Spacer()
                                            Text(profile.descriptionU ?? " ")
                                                .font(.caption)
                                                .foregroundColor(Color("DeepBlue"))
                                            
                                        }.padding()
                                    }
                                    
                                    Spacer()
                                }
                                
                            }
                            
                        }
                    }
                    
                    
                    
                    
                    // CODE POUR AFFICHER LE DERNIER PROFIL DANS MA BASE DE DONNEES S'IL EST PROFESSIONEL
                    
                    //                    if !profileVM.ListeProfilesP.isEmpty {
                    //                        let profile = profileVM.ListeProfilesP
                    //
                    //
                    //                        if  let profileLast = profile.last(where: { profile in
                    //
                    //                            return profile.isPro == true
                    //                        })
                    //                        {
                    //                            VStack {
                    //                                HStack{
                    //
                    //                                    Image(uiImage: UIImage(data: profileLast.profilPic  ?? Data()) ?? UIImage())
                    //                                        .resizable()
                    //                                        .frame(width: 150, height: 150)
                    //                                        .foregroundColor(Color("DeepBlue"))
                    //                                        .cornerRadius(20)
                    //
                    //                                    VStack(alignment: .leading){
                    //                                        VStack{
                    //                                            HStack{
                    //
                    //                                                Text(profileLast.prenom ?? " ")
                    //                                                    .font(.title2)
                    //                                                Text("\(profileLast.age)")
                    //                                                    .font(.title3)
                    //
                    //                                            }.padding(.bottom)
                    //
                    //                                            Text(profileLast.adresse ?? " ")
                    //                                        }
                    //                                        Text(profileLast.descriptionU ?? " ")
                    //                                            .font(.caption)
                    //
                    //                                    }.padding()
                    //                                }
                    //
                    //                                Spacer()
                    //                            }
                    //                        }
                    //                    }
                    
                }
                
                
                
            }
        }
        
    }


struct ProfilPView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilPView(email: " ", mdp: " ").environmentObject(ListesDesProfiles())
    }
}
