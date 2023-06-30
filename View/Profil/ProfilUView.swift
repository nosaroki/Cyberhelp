//
//  ProfilUView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI
import UIKit

struct ProfilUView: View {
        
    //@EnvironmentObject var ProfilsUVM: ListesDesProfilesU
    
    @StateObject var ProfilsUVM = ListesDesProfiles()
    
    @State private var selectedTopicProfil : TopicOptionProfil = .profil
    
    @State private var image = UIImage()
    @State private var showPhotoSheet = false
    
    @ViewBuilder
    
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
                    HStack{
                        
                ScrollView{
                            
                    }.padding(.top)
                    
                    if !ProfilsUVM.ListeProfilesP.isEmpty {
                        let profile = ProfilsUVM.ListeProfilesP[0]
                        
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
                        }
                    }
                    
                    
                    Spacer()
                }
            }
            }
            }
            
        }


struct ProfilUView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilUView()
           // .environmentObject(ListesDesProfilesU())
    }
}
