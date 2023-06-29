//
//  InscriptionView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct InscriptionView: View {
    
//    @State var isPro : Bool = false
    
    @State var email : String = ""
    @State var motDePasse : String = ""
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Color("Neutre").edgesIgnoringSafeArea(.top)
                                
                VStack {
                    
                   
                    Spacer()
                    Text("Bienvenu !")
                        .font(.system(size : 40))
                        .foregroundColor(Color("DeepBlue"))
                        .padding(20)
                    Spacer()
                    
                    
                   
                        
//
                    ZStack {
                        Rectangle()
                            .frame(width: 320, height: 280)
                            .foregroundColor(Color(hue: 0.566, saturation: 0.042, brightness: 0.937))
                            .cornerRadius(10)
                        VStack(alignment: .leading){

                                Text("Email")
                                    .foregroundColor(Color("DeepBlue"))
                                    .bold()
                                    
                                Spacer()
                                TextField("", text: $email)
                                    .tint(.gray)
                                    .frame(width: 280)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())

                                
                                Text("Mot de passe")
                                    .foregroundColor(Color("DeepBlue"))
                                    .bold()
                            
                                Spacer()
                                TextField("", text: $motDePasse)
                                    .tint(.gray)
                                    .frame(width: 280)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.bottom)

                                ZStack{
                                    Rectangle()
                                        .frame(width: 280, height: 30)
                                        .foregroundColor(Color("Primaire"))
                                        .cornerRadius(5)
                                    
                                    Text("Se connecter")
                                        .foregroundColor(Color("Neutre"))
                                        .multilineTextAlignment(.center)
                                        .bold()
                                    
                            }}.frame(width: 310, height: 160)
                    }
                    
                
                    Spacer()
                    
                    
                    
                    Text("Créer un compte")
                        .foregroundColor(Color("Orange"))
                        .bold()
                    
                    HStack{
                        
                        //bouton Inscription Pro
                        NavigationLink{
                            InscriptionDetailsView(isPro: true)
//                            isPro = true
                            } label: {
                                Text("Professionnel \r de santé")
                                    .frame(width: 115, height: 50)
                            }.buttonStyle(.borderedProminent)
                                .padding(10)
                                .tint(Color("Primaire"))
                        
                        //bouton Inscription Utilisateur
                        NavigationLink {
                           // isPro = false
                          InscriptionDetailsView(isPro: false)
                            
                        } label: {
                            
                            Text("Utilisateur")
                                .frame(width: 115, height: 50)
                        }.buttonStyle(.borderedProminent)
                            .tint(Color("Primaire"))
                            .padding(10)
                        
                    }
                    Spacer()
                    Spacer()
                    }
                    
                    
                }
                
            }
        }
}

struct InscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionView()
    }
}
