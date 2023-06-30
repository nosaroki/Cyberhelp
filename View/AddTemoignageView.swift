//
//  AddTemoignageButton.swift
//  CyberHelp
//
//  Created by Apprenant 87 on 29/06/2023.
//

import SwiftUI

struct AddTemoignageView: View {
    
    @Binding var addTemoignage : Bool
    
    @State private var titre = ""
    @State private var contentArticle = ""
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Color("Neutre")
                    .ignoresSafeArea()
                
                VStack {
                    
                    ScrollView {
                        
                        VStack(alignment: .leading) {
                            Text("Titre de ton article *")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundColor(Color("DeepBlue"))
                            
                            TextField("Titre de ton article", text: $titre)
                                .textFieldStyle(.roundedBorder)
                                .padding(.bottom, 16)
                            
                            Text("Raconte nous ton histoire *")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundColor(Color("DeepBlue"))
                            
                            TextField("Raconte nous ton histoire", text: $contentArticle)
                                .textFieldStyle(.roundedBorder)
                            
                            Button {
                            } label: {
                                Text("+ " + " Ajouter une image")
                                    .fontWeight(.bold)
                            }
                            .buttonStyle(.borderedProminent)
                            .frame(width: 200)
                            .tint(Color("Orange"))
                            .zIndex(1)
                            .padding(.leading, 70)
                            .padding()
                            
                            
                        }
                        .padding()
                        
                    }
                    
                    Button {
                        // Enregistre l'article en BDD et l'ajoute sur la page témoignage
                    } label: {
                        Text("Partager mon témoignage")
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(Color("Primaire"))
                    
                }
                .navigationTitle("Mon témoignage")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(trailing:
                                        HStack {
                    
                } )
                
            }
        }
    }
    struct AddTemoignageView_Previews: PreviewProvider {
        static var previews: some View {
            AddTemoignageView(addTemoignage: .constant(true))
        }
        
    }
}
