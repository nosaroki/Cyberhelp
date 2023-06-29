//
//  ProfilUView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct ProfilPView: View {
    
    //@EnvironmentObject var ProfilsUVM: ListesDesProfilesU
    
    @StateObject var profileVM = ListesDesProfiles()
    
    @State private var selectedTopicProfil : TopicOptionProfil = .profil
    
    var body: some View {
        ZStack{
            Color("Neutre").edgesIgnoringSafeArea(.top)
            
            VStack {
                Picker((""), selection: $selectedTopicProfil) {
                    ForEach(TopicOptionProfil.allCases, id:\ .self) { topic in
                        Text(topic.rawValue)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
                .foregroundColor(Color("DeepBlue"))
                ScrollView{
                    if !profileVM.ListeProfilesP.isEmpty {
                        let profile = profileVM.ListeProfilesP[0]
                        VStack {
                            HStack{
                                
                                Image(uiImage: UIImage(data: profile.profilPic  ?? Data()) ?? UIImage())
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .foregroundColor(Color("DeepBlue"))
                                    .cornerRadius(20)
                                
                                VStack(alignment: .leading){
                                    VStack{
                                        HStack{
                                            
                                            Text(profile.prenom ?? " ")
                                                .font(.title2)
                                            Text("\(profile.age)")
                                                .font(.title3)
                                            
                                        }.padding(.bottom)
                                        
                                        Text(profile.adresse ?? " ")
                                    }
                                    Text(profile.descriptionU ?? " ")
                                        .font(.caption)
                                    
                                }.padding()
                            }
                            
                            Spacer()
                        }
                    }
                }
            }
        }
    }
}

struct ProfilPView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilPView()
    }
}
