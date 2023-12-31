////
////  InscriptionView.swift
////  CyberHelp
////
////  Created by apprenant 23 on 21/06/2023.
////
//
//import SwiftUI
//
//struct InscriptionView: View {
//
//    @StateObject var profileVM = ListesDesProfiles()
//
//    @State var email : String = ""
//    @State var mdp : String = ""
//
//    @State var isExist : Bool = false
//    @State var isExistP : Bool = false
//
//
//    var body: some View {
//
//        NavigationView{
//
//            ZStack{
//                Color("Neutre").edgesIgnoringSafeArea(.top)
//
//                VStack {
//
//                    Spacer()
//                    Text("Bienvenue !")
//                        .font(.system(size : 40))
//                        .foregroundColor(Color("DeepBlue"))
//                        .padding(20)
//                    Spacer()
//
//                    //
//                    ZStack {
//                        Rectangle()
//                            .frame(width: 320, height: 280)
//                            .foregroundColor(Color(hue: 0.566, saturation: 0.042, brightness: 0.937))
//                            .cornerRadius(10)
//                        VStack(alignment: .leading){
//
//                            Text("Email")
//                                .foregroundColor(Color("DeepBlue"))
//                                .bold()
//
//                            Spacer()
//                            TextField("", text: $email)
//                                .tint(.gray)
//                                .frame(width: 280)
//                                .textFieldStyle(RoundedBorderTextFieldStyle())
//
//
//                            Text("Mot de passe")
//                                .foregroundColor(Color("DeepBlue"))
//                                .bold()
//
//                            Spacer()
//                            TextField("", text: $mdp)
//                                .tint(.gray)
//                                .frame(width: 280)
//                                .textFieldStyle(RoundedBorderTextFieldStyle())
//                                .padding(.bottom)
//
//                            ZStack{
//                                Rectangle()
//                                    .frame(width: 280, height: 30)
//                                    .foregroundColor(Color("Primaire"))
//                                    .cornerRadius(5)
//
//
//
//                                NavigationLink(destination: ProfilUView(), isActive: $isExist){
//
//                                    Button {
//
//                                        ForEach (profileVM.ListeProfilesP) { profile in
//
//                                            if profile.email == email && profile.mdp == mdp
//                                            {
//                                                isExist = true
//
//                                                if profile.isPro == true{
//
//                                                    isExistP = true
//                                                }
//                                            }
//                                        }
//
//
//                                    } label: {
//                                        Text("Se connecter")
//                                    }.buttonStyle(.borderedProminent)
//                                        .tint(Color("Primaire"))
//
//                                }.padding(5)
//
//
//
//                            }
//                        }.frame(width: 310, height: 160)
//                    }
//
//
//                    Spacer()
//
//
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
//                                .frame(width: 115, height: 50)
//                        }.buttonStyle(.borderedProminent)
//                            .tint(Color("Primaire"))
//                            .padding(10)
//
//                    }
//                    Spacer()
//                }
//            }
//
//        }
//    }
//}
//
//struct InscriptionView_Previews: PreviewProvider {
//    static var previews: some View {
//        InscriptionView()
//    }
//}
