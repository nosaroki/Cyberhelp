//
//  ConnexionView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

//
//  InscriptionView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct ConnexionView: View {
    
    @StateObject var profileVM = ListesDesProfiles()
    
    @State var email : String = ""
    @State var mdp : String = ""
    
    @State var isExist : Bool = false
    @State var isExistP : Bool = false
    
   
    
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Color("Neutre").ignoresSafeArea()
                
                VStack {
                                        
                    Spacer()
                    Text("Bienvenue !")
                        .font(.system(size : 40))
                        .foregroundColor(Color("DeepBlue"))
                        .padding(20)
                    Spacer()

                    //
                    ZStack {
                        Rectangle()
                            .frame(width: 320, height: 280)
                            .foregroundColor(Color(hue: 0.544, saturation: 0.126, brightness: 0.982))
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
                            SecureField("", text: $mdp)
                                .tint(.gray)
                                .frame(width: 280)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.bottom)
                            
                            ZStack{
//                                Rectangle()
//
//                                    .foregroundColor(Color("Primaire"))
//                                    .cornerRadius(5)
//                                Text("Se connecter")
//                                    .foregroundColor(Color("Neutre"))
                                
                                //VOIR AVEC KELIAN
                                
                                NavigationLink(destination: ProfilUView(profileVM: profileVM, email: email, mdp: mdp), isActive: $isExist){
                                    
                                }
                                
                                NavigationLink(destination: ProfilPView(email: email, mdp: mdp, profileVM: profileVM), isActive: $isExistP){
                                    
                                }
                                          
                                    Button {
                                        
                                        for profile in profileVM.ListeProfilesP {
                                            
                                            if profile.email == email && profile.mdp == mdp
                                            {
                                                                                               
                                                if profile.isPro == true{
                                            
                                                    isExistP = true
                                                }else{
                                                    isExist = true
                                                }
                                            }
                                        }
                                            
                                        
                                    } label: {
                                        Text("Se connecter")
                                            .frame(width: 255, height: 30)
                                            .bold()
                                    }.buttonStyle(.borderedProminent)
                                        .tint(Color("Primaire"))
                                        .padding(.top)
                                        
                                
                            }
                        }.frame(width: 310, height: 160)
                    }
                    
                    
                    Spacer()
                    
                    
                    NavigationLink(destination: CreationDeCompte())
                    {
                        Text("Cliquer ICI pour créer un compte")
                            .foregroundColor(Color("DeepBlue"))
                            .bold()
                    }
//
//                    Text("Créer un compte")
//                        .foregroundColor(Color("Orange"))
//                        .bold()
//
//                    HStack{
//
//                        //bouton Inscription Pro
//                        NavigationLink{
//                            InscriptionDetailsView(profileVM: profileVM, isPro: true)
//
//                        } label: {
//                            Text("Professionnel \r de santé")
//                                .frame(width: 115, height: 50)
//                                .bold()
//                        }.buttonStyle(.borderedProminent)
//                            .padding(10)
//                            .tint(Color("Primaire"))
//
//                        //bouton Inscription Utilisateur
//                        NavigationLink {
//
//                            InscriptionDetailsView(profileVM: profileVM, isPro: false)
//
//                        } label: {
//
//                            Text("Utilisateur")
//                                .bold()
//                                .frame(width: 115, height: 50)
//                        }.buttonStyle(.borderedProminent)
//                            .tint(Color("Primaire"))
//                            .padding(10)
//
//                    }
                    Spacer()
                }
            }
            
        }
    }
}

struct ConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionView()
    }
}


