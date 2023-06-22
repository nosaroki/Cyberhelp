//
//  InscriptionDetailsUView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct InscriptionDetailsUView: View {
    
    @State var photoprofil: UIImage?
    @State var prénom : String
    @State var nom : String
    @State var age : Int
    @State var body: some View {
        Color("Neutre")
            .edgesIgnoringSafeArea(.top)
        ZStack{
            ScrollView{
                VStack{
                    
                    HStack{
                        
                        Text("Nom")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                        TextField("methni", text: $nom)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                    }
                    HStack{
                        Text("Prenom")
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding()
                        TextField("Mouna", text: $prénom)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                    
                    
                }
            }
        }
        
    }
}

struct InscriptionDetailsUView_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionDetailsUView()
    }
}
