//
//  ModaleTemoignages.swift
//  CyberHelp
//
//  Created by Apprenant 87 on 28/06/2023.
//

import SwiftUI

struct ModaleTemoignages: View {
    
    @Binding var isModaleShown : Bool
    @State private var text1 = ""
    @State private var text2 = ""
    
    var body: some View {
        
        ZStack{
            
            Color("Neutre")
                .edgesIgnoringSafeArea(.top)
            ScrollView{
                VStack(alignment: .leading) {
                    // Croix fermante
                    HStack {
                        Spacer()
                        Button {
                            isModaleShown = false
                        } label: {
                            Image(systemName: "xmark")
                                .font(.largeTitle)
                                .foregroundColor(Color("Orange"))
                        }
                        
                        
                    }
                    // Content
                    
                    Spacer()
                    
                    Text("Mon témoignage")
                        .bold()
                        .font(.title)
                        .foregroundColor(Color("DeepBlue"))
                    
                    Text("Titre de ton article *")
                        .padding()
                        .font(.title3)
                        .foregroundColor(Color("DeepBlue"))
                    
                    TextField("Ecrire ici", text: $text1)
                        .font(.body)
                        .frame(height: 50)
                        .foregroundColor(Color("DeepBlue"))
                        .background(Color.white)
                        .cornerRadius(8)
                    
                    Text("Raconte nous ton histoire *")
                        .padding()
                        .font(.title3)
                        .foregroundColor(Color("DeepBlue"))
                    
                    TextField("Ecrire ici", text: $text2)
                        .font(.body)
                        .frame(height: 200)
                        .foregroundColor(Color("DeepBlue"))
                        .background(Color.white)
                        .cornerRadius(8)
                    
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
                    
                    Button {
                        } label: {
                        Text("Publier mon témoignage")
                            .fontWeight(.bold)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .frame(width: 250)
                    .tint(Color("Primaire"))
                    .zIndex(1)
                    .padding(.leading, 50)
                    .padding()
                }
                .padding()
            }
        }
    }
}

struct ModaleTemoignages_Previews: PreviewProvider {
    static var previews: some View {
        ModaleTemoignages(isModaleShown: .constant(true))
    }
}
