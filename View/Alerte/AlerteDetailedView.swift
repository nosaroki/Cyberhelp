//
//  AlerteDetailView.swift
//  CyberHelp
//
//  Created by apprenant68 on 28/06/2023.
//

import SwiftUI

struct AlerteDetailedView: View {
    @EnvironmentObject var alerteVM: AlertClass
    
    var body: some View {
        ZStack{
            Color("Neutre")
                .edgesIgnoringSafeArea(.top)

            VStack{
                VStack{
                    HStack{
                        VStack(alignment: .leading,spacing: 4){
                            Text("Pseudo")
                                .padding(.vertical,4)
                                .foregroundColor(Color("DeepBlue"))
                                .font(.title2)
                                .fontWeight(.bold)
                            Text(alerteVM.signalements[0].nom)
                                .foregroundColor(Color("DeepBlue"))
                                .opacity(0.5)
                        }
                        
                        Spacer()
                    }
                    Divider()
                    HStack{
                        VStack(alignment: .leading,spacing: 4){
                            Text("Type de signalement")
                                .padding(.vertical,4)
                                .foregroundColor(Color("DeepBlue"))
                                .font(.title2)
                                .fontWeight(.bold)
                            Text(alerteVM.signalements[0].type.rawValue)
                                .foregroundColor(Color("DeepBlue"))
                                .opacity(0.5)
                        }
                        
                        Spacer()
                    }
                    Divider()
                    HStack{
                        VStack(alignment: .leading,spacing: 4){
                            Text("Description")
                                .padding(.vertical,4)
                                .foregroundColor(Color("DeepBlue"))
                                .font(.title2)
                                .fontWeight(.bold)
                            Text(alerteVM.signalements[0].description)
                                .foregroundColor(Color("DeepBlue"))
                                .opacity(0.5)
                        }
                        
                        Spacer()
                    }
                    Divider()
                    HStack{
                        VStack(alignment: .leading,spacing: 4){
                            Text("Pièces jointes")
                                .padding(.vertical,4)
                                .foregroundColor(Color("DeepBlue"))
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("Vide") // Insertion d'images et screens
                                .foregroundColor(Color("DeepBlue"))
                                .opacity(0.5)
                        }
                        
                        Spacer()
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(16)
                .padding()
                .padding(.top)
                Spacer()
                
                
                
                NavigationLink(destination: EmptyChatView(conversation: emptyConversation)){
                                Text("Contacter")
                                                .fontWeight(.medium)
                                                .padding(13)
                                                .foregroundColor(.white)
                                                .background(Color("Primaire"))
                                                .cornerRadius(8)
                                                .padding(.bottom,32)

                }
                

            }
        }
    }
}

struct AlerteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AlerteDetailedView().environmentObject(AlertClass())
    }
}
