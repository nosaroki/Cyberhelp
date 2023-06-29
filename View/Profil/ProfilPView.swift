//
//  ProfilUView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct ProfilPView: View {
        
    //@EnvironmentObject var ProfilsUVM: ListesDesProfilesU
    
    @StateObject var ProfilsPVM = ListesDesProfiles()
    
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
                    VStack {
                       
                        
//                        ForEach (ProfilsPVM.ListeProfilesP){ profilselect in
                            
                            HStack{
                               
                                Image(uiImage: UIImage(data: ProfilsPVM.ListeProfilesP[0].profilPic  ?? Data()) ?? UIImage())
                                    .resizable()
                                    .frame(width: 150, height: 150)
                                    .foregroundColor(Color("DeepBlue"))
                                    .cornerRadius(20)
                                
//                                Image(uiImage: UIImage(data: profilselect.profilPic ?? Data()) ?? UIImage())
//                                    .resizable()
//                                    .frame(width: 150, height: 150)
//                                    .foregroundColor(Color("DeepBlue"))
//                                    .cornerRadius(20)
                                
                                VStack(alignment: .leading){
                                    VStack{
                                        HStack{
                                            
                                            Text(ProfilsPVM.ListeProfilesP[0].prenom ?? " ")
                                                .font(.title2)
                                            Text("\(ProfilsPVM.ListeProfilesP[0].age)")
                                                .font(.title3)
                                           
                                        }.padding(.bottom)
                                        
                                        Text(ProfilsPVM.ListeProfilesP[0].adresse ?? " ")
                                    }
                                    Text(ProfilsPVM.ListeProfilesP[0].descriptionU ?? " ")
                                        .font(.caption)
                                    
                                }.padding()
//                            }
                        }
                        
                        
                        Spacer()
                    }
                }
            }
            }
            }
            
        }


struct ProfilPView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilPView()
           // .environmentObject(ListesDesProfilesU())
    }
}
