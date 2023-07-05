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
    
    @EnvironmentObject var profileVM: ListesDesProfiles
    
    @State var email : String = "Marie@gmail.com"
    @State var mdp : String = "Mdp"
    
    @State private var isTextValid: Bool = true
    @State private var isEmailValid: Bool = true
    
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
                                .overlay{
                                    if !isTextValid {
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.red.opacity(0.3))
                                        
                                    }
                                }
                            
                            
                            Text("Mot de passe")
                                .foregroundColor(Color("DeepBlue"))
                                .bold()
                            
                            Spacer()
                            SecureField("", text: $mdp)
                                .tint(.gray)
                                .frame(width: 280)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .overlay{
                                    if !isTextValid {
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.red.opacity(0.3))
                                        
                                    }
                                }
                                .padding(.bottom)
                            
                            ZStack{
                                
                                
                                //VOIR AVEC KELIAN
                                
                                NavigationLink(destination: ProfilUView(email: email, mdp: mdp), isActive: $isExist){
                                    
                                }
                                
                                NavigationLink(destination: ProfilP2View(), isActive: $isExistP){
                                    
                                }
                                
                                Button {
                                    
                                    validateFields()
                                    
                                    for profile in profileVM.ListeProfilesP {
                                        
                                        if profile.email == email && profile.mdp == mdp
                                        {
                                            profileVM.monProfil = profile
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
    
    
    
    func validateFields() {
        isTextValid = isValidText(mdp)
        isEmailValid = isValidEmail(email)
    }
    
    func isValidEmail(_ email: String) -> Bool {
        return email.contains("@") && email.contains(".")
    }
    
    func isValidText(_ mdp: String) -> Bool {
        
        return !mdp.isEmpty
    }
    
    func isFormValid() -> Bool {
        return isTextValid && isEmailValid
    }
    
}

struct ConnexionView_Previews: PreviewProvider {
    static var previews: some View {
        ConnexionView().environmentObject(ListesDesProfiles())
    }
}


