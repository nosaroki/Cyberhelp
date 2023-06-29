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
    
    @State private var image = UIImage()
    @State private var showPhotoSheet = false
    
    var body: some View {
        ZStack{
            Color("Neutre").edgesIgnoringSafeArea(.top)
            ScrollView{
                VStack {
                    
                    HStack{
                        Text("Mon profil")
                        Text("Mon signalement")
                    }.padding(.top)
                    
                    ForEach (ProfilsUVM.ListeProfilesP){ profilselect in
                        
                        HStack{
                            
                         //   Image (systemName: "person.fill")
                            
                          Image(uiImage: UIImage(data: profilselect.profilPic ?? Data()) ?? UIImage())
                            
//                            profilselect.profilPic
                                .resizable()
                                .frame(width: 150, height: 150)
                                .foregroundColor(Color("DeepBlue"))
                            
                            VStack(alignment: .leading){
                                HStack{
                                    
                                    Text(profilselect.prenom ?? "no name")
                                        .font(.title)
                                    Text("\(profilselect.age)")
                                        .font(.title2)
                                    
                                }.padding(.bottom)
                                
                                Text(profilselect.adresse ?? " ")
                                
                                Text(profilselect.descriptionU ?? " ")
                                
                            }.padding()
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
