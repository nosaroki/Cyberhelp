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
                    .edgesIgnoringSafeArea(.top)
                VStack{
                    ScrollView{
                        if let profile = profileVM.monProfil{
                            HStack(alignment: .top){
                                Image(uiImage: UIImage(data: profile.profilPic  ?? Data()) ?? UIImage())
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 120, height: 120)
                                    .clipShape(Circle())
                                    .overlay(
                                        Circle()
                                            .stroke((Color("DeepBlue")), lineWidth: 2)
                                            .frame(width: 122, height: 122)
                                    )
                                    .padding(.top)
                                    .padding(.horizontal)
                                
                                VStack(alignment: .leading){
                                    Text("\(profile.nom!) \(profile.prenom!)")
                                        .font(.title)
                                        .lineLimit(1)
                                        .scaledToFit()
                                        .fontWeight(.bold)
                                        .foregroundColor(Color("DeepBlue"))
                                    Text("Psychologue")
                                        .padding(.bottom, 2)
                                        .foregroundColor(Color("DeepBlue"))
                                        .opacity(0.7)
                                    
                                    HStack{
                                        Image(systemName: "mappin.circle")
                                            .foregroundColor(Color("DeepBlue"))
                                            .padding(.trailing, 1)
                                        Text(profile.adresse!)
                                            .font(.system(size: 16))
                                            .foregroundColor(Color("DeepBlue"))
                                    }
                                    //                                .padding(.bottom)
                                    HStack(){
                                        Image(systemName: "graduationcap")
                                            .foregroundColor(Color("DeepBlue"))
                                            .font(.system(size: 14))
                                        Text("6 ans d'expérience")
                                            .padding(.horizontal, -2)
                                            .font(.system(size: 16))
                                            .foregroundColor(Color("DeepBlue"))
                                    }
                                    .padding(.top, -8)
                                    .padding(.bottom, 16)
                                    
                                }
                                .padding(.vertical)
                                Spacer()
                            }
                            VStack(alignment:.leading){
                                Text("Biographie")
                                    .foregroundColor(Color("DeepBlue"))
                                    .fontWeight(.bold)
                                    .font(.title2)
                                Text("Je suis psychologue cognitiviste-comportementaliste, je reçois en mon cabinet situé à Vaux-le-Penil, en Seine et Marne, les enfants adolescents et adultes, en demande d'intervention psychologique efficace et mesurable. \r\rJe propose une thérapie comportementale fondée sur l'extinction du comportement inadapté et le renforcement des comportements appropriés, par apprentissage systématique, adapté et généralisable.")
                                    .padding(.top,-4)
                                    .foregroundColor(Color("DeepBlue"))
                                    .opacity(0.5)
                            }
                            .padding(4)
                            .padding()
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Modifier")
                {}
                    .fontWeight(.bold)
        }
    }
}

struct ProfilP2View_Previews: PreviewProvider {
    static var previews: some View {
        ProfilP2View().environmentObject(ListesDesProfiles())
    }
}
