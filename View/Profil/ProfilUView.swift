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
    
    @ObservedObject var profileVM : ListesDesProfiles
    
    @State private var image = UIImage()
    @State private var showPhotoSheet = false
    
    var email : String
    var mdp : String
    
    @ViewBuilder
    
    var body: some View {
        ZStack{
            Color("Neutre")
                .edgesIgnoringSafeArea(.top)
                    VStack{
                    ScrollView{
                                                       
                            ForEach (profileVM.ListeProfilesP) { profile in
                                
                                if profile.email == email && profile.mdp == mdp {
                                    
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
                                                Text("Etudiante")
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
                                                    Text("langue étrangère")
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
                                            Text(profile.descriptionU ?? " ")
                                                .padding(.top,-4)
                                                .foregroundColor(Color("DeepBlue"))
                                                .opacity(0.5)
                                        }
                                        .padding(4)
                                        .padding()
                                    }
                                }
                            
                        }
                        .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            Button("Modifier")
                            {}
                                .fontWeight(.bold)
                                    
                                                                        
//                                    VStack{
//                                        HStack{
//
//                                            Image(uiImage: UIImage(data: profile.profilPic  ?? Data()) ?? UIImage())
//                                                .resizable()
//                                                .frame(width: 150, height: 250)
//                                                .foregroundColor(Color("DeepBlue"))
//                                                .cornerRadius(20)
//
//                                            VStack(alignment: .leading){
//                                                VStack(alignment:.leading){
//                                                    HStack{
//
//                                                        Text(profile.prenom ?? " ")
//                                                            .font(.title2)
//                                                            .foregroundColor(Color("DeepBlue"))
////                                                        Text(" - \(profile.age) ans")
////                                                            .font(.title3)
////                                                            .foregroundColor(Color("DeepBlue"))
//
//                                                    }.padding(.bottom)
//
//                                                    Text(profile.adresse ?? " ")
//                                                }
//
//
//                                            }.padding()
//                                        }
//
//                                        Spacer()
//                                    }
//                                    VStack{
//                                        Text(profile.descriptionU ?? " ")
//                                            .font(.caption)
//                                            .foregroundColor(Color("DeepBlue"))
//                                    }
                                    
                                }
                                
                            }
                        }
                        
//                            if !profileVM.ListeProfilesP.isEmpty {
//                                let profile = profileVM.ListeProfilesP
//                                
//                                
//                                if  let profileLast = profile.last(where: { profile in
//                                    
//                                    return profile.isPro == false
//                                })
//                                {
//                                    VStack {
//                                        HStack{
//                                            
//                                            Image(uiImage: UIImage(data: profileLast.profilPic  ?? Data()) ?? UIImage())
//                                                .resizable()
//                                                .frame(width: 150, height: 150)
//                                                .foregroundColor(Color("DeepBlue"))
//                                                .cornerRadius(20)
//                                            
//                                            VStack(alignment: .leading){
//                                                VStack{
//                                                    HStack{
//                                                        
//                                                        Text(profileLast.prenom ?? " ")
//                                                            .font(.title2)
//                                                        Text("\(profileLast.age)")
//                                                            .font(.title3)
//                                                        
//                                                    }.padding(.bottom)
//                                                    
//                                                    Text(profileLast.adresse ?? " ")
//                                                }
//                                                Text(profileLast.descriptionU ?? " ")
//                                                    .font(.caption)
//                                                
//                                            }.padding()
//                                        }
//                                        
//                                        Spacer()
//                                    }
//                                }
//                            }
                    }
                }
            
        
    
            



struct ProfilUView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilUView(profileVM: ListesDesProfiles(), email: " ", mdp: " ")
           // .environmentObject(ListesDesProfilesU())
    }
}
