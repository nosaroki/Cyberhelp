//
//  CreationDeCompte.swift
//  CyberHelp
//
//  Created by Apprenant 79 on 03/07/2023.
//

import SwiftUI

struct CreationDeCompte: View {
    
    @StateObject var profileVM = ListesDesProfiles()
    
    @State var isExist : Bool = false
    @State var isExistP : Bool = false
    
    
    var body: some View { 
            ZStack{
                Color("Neutre").ignoresSafeArea()
                
                VStack {
                    
                    Text("Créer un compte")
                        .foregroundColor(Color("DeepBlue"))
                        .bold()
                    
                    HStack{
                        
                        //bouton Inscription Pro
                        NavigationLink{
                            InscriptionDetailsView(profileVM: profileVM, isPro: true)
                            
                        } label: {
                            Text("Professionnel \r de santé")
                                .frame(width: 115, height: 50)
                                .bold()
                        }.buttonStyle(.borderedProminent)
                            .padding(10)
                            .tint(Color("Primaire"))
                        
                        //bouton Inscription Utilisateur
                        NavigationLink {
                            
                            InscriptionDetailsView(profileVM: profileVM, isPro: false)
                            
                        } label: {
                            
                            Text("Utilisateur")
                                .bold()
                                .frame(width: 115, height: 50)
                        }.buttonStyle(.borderedProminent)
                            .tint(Color("Primaire"))
                            .padding(10)
                        
                        
                        
                        
                    }
                }
            }
    }
}

struct CreationDeCompte_Previews: PreviewProvider {
    static var previews: some View {
        CreationDeCompte()
    }
}
