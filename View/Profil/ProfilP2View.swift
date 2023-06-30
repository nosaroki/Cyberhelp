//
//  ProfilP2View.swift
//  CyberHelp
//
//  Created by apprenant68 on 29/06/2023.
//

import SwiftUI

struct ProfilP2View: View {
    @StateObject var profileVM = ListesDesProfiles()
    
    @State private var selectedTopicProfil : TopicOptionProfil = .profil
    
    var body: some View {
        ZStack{
            Color("Neutre")
            VStack{
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
                        HStack(alignment: .top){
                            Image("doctorPp")
                                .resizable()
                                .cornerRadius(16)
                                .padding(.top)
                                .scaledToFit()
                            VStack(alignment: .leading){
                                Text("Nom prénom")
                                    .lineLimit(1)
                                    .scaledToFit()
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("DeepBlue"))
                                Text("Specialité")
                                    .padding(.bottom, 2)
                                    .foregroundColor(Color("DeepBlue"))
                                    .opacity(0.5)
                                
                                HStack{
                                    Image(systemName: "mappin.circle")
                                    Text("Distance")
                                        .foregroundColor(Color("DeepBlue"))
                                        .opacity(0.5)
                                }
                                .padding(.bottom)
                                HStack{
                                    Image(systemName: "graduationcap.fill")
                                        .padding(8)
                                        .background(.white)
                                        .cornerRadius(8)
                                    VStack(alignment: .leading){
                                        Text("Experience")
                                            .foregroundColor(Color("DeepBlue"))
                                            .opacity(0.5)
                                        Text("6 ans")
                                            .foregroundColor(Color("DeepBlue"))
                                    }
                                }
                            }
                            .padding()
                        }
                        VStack(alignment:.leading){
                            Text("Biographie")
                                .foregroundColor(Color("DeepBlue"))
                                .fontWeight(.bold)
                            Text("feoakfo ok faeokf oaekfpkf oaekf oeak fkeao pkfk pokopkopkepafk opkoopk eoapk")
                                .padding(.top,2)
                                .foregroundColor(Color("DeepBlue"))
                                .opacity(0.5)
                        }
                        .padding(4)
                        .padding()
                    }
                }
            }
        }
    }
}

struct ProfilP2View_Previews: PreviewProvider {
    static var previews: some View {
        ProfilP2View()
    }
}
