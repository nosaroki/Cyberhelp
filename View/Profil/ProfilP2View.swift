//
//  ProfilP2View.swift
//  CyberHelp
//
//  Created by apprenant68 on 29/06/2023.
//

import SwiftUI

struct ProfilP2View: View {
    @EnvironmentObject var profileVM : ListesDesProfiles
    
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
                    if let profile = profileVM.monProfil{
                        HStack(alignment: .top){
                            Image(uiImage: UIImage(data: profile.profilPic  ?? Data()) ?? UIImage())
                                .resizable()
                                .scaledToFill()
                                .frame(width: 170, height: 170)
                                .cornerRadius(16)
                                .clipped()
                                .padding(.top)
                                .padding(.horizontal)
                        
                            VStack(alignment: .leading){
                                Text("\(profile.nom!) \(profile.prenom!)")
                                    .font(.title2)
                                    .lineLimit(1)
                                    .scaledToFit()
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("DeepBlue"))
                                Text("Psychologue")
                                    .padding(.bottom, 2)
                                    .foregroundColor(Color("DeepBlue"))
                                    .opacity(0.5)
                                
                                HStack{
                                    Image(systemName: "mappin.circle")
                                        .font(.system(size: 22))
                                        .padding(.trailing, 1)
                                    Text(profile.adresse!)
                                        .foregroundColor(Color("DeepBlue"))
                                        .opacity(0.5)
                                }
//                                .padding(.bottom)
                                HStack(alignment: .top){
                                    Image(systemName: "graduationcap")
                                    VStack(alignment: .leading){
                                        Text("Experience")
                                            .foregroundColor(Color("DeepBlue"))
                                            .opacity(0.5)
                                        Text("6 ans")
                                            .foregroundColor(Color("DeepBlue"))
                                    }
                                    .padding(.top, 4)
                                }
                            }
                            .padding(.vertical)
                            Spacer()
                        }
                        VStack(alignment:.leading){
                            Text("Biographie")
                                .foregroundColor(Color("DeepBlue"))
                                .fontWeight(.bold)
                            Text("Je suis psychologue cognitiviste-comportementaliste, je reçois en mon cabinet situé à Vaux-le-Penil, en Seine et Marne, les enfants adolescents et adultes, en demande d'intervention psychologique efficace et mesurable. Je propose une thérapie comportementale fondée sur l'extinction du comportement inadapté et le renforcement des comportements appropriés, par apprentissage systématique, adapté et généralisable. En parallèle, je propose une thérapie cognitive, fondée sur la restructuration du traitement de l'information, l'apprentissage de la souplesse cognitive et la remédiation, afin d'obtenir une perception pertinente de la réalité et un comportement maîtrisé.")
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
        ProfilP2View().environmentObject(ListesDesProfiles())
    }
}
