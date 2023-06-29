//
//  AlerteDetailView.swift
//  CyberHelp
//
//  Created by apprenant68 on 28/06/2023.
//

import SwiftUI

struct AlerteDetailedView: View {
    var body: some View {
        ZStack{
            Color("Neutre")
            VStack{
                VStack{
                    HStack{
                        VStack(alignment: .leading,spacing: 4){
                            Text("Pseudo")
                                .foregroundColor(Color("Secondaire"))
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("polochon13431")
                                .foregroundColor(Color("DeepBlue"))
                                .opacity(0.5)
                        }
                        
                        Spacer()
                    }
                    Divider()
                    HStack{
                        VStack(alignment: .leading,spacing: 4){
                            Text("Type de signalement")
                                .foregroundColor(Color("Secondaire"))
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("Grooming")
                                .foregroundColor(Color("DeepBlue"))
                                .opacity(0.5)
                        }
                        
                        Spacer()
                    }
                    Divider()
                    HStack{
                        VStack(alignment: .leading,spacing: 4){
                            Text("Description")
                                .foregroundColor(Color("Secondaire"))
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.")
                                .foregroundColor(Color("DeepBlue"))
                                .opacity(0.5)
                        }
                        
                        Spacer()
                    }
                    Divider()
                    HStack{
                        VStack(alignment: .leading,spacing: 4){
                            Text("Pièces jointes")
                                .foregroundColor(Color("Secondaire"))
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("photos") // Insertion d'images et screens
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
                Text("Contacter")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("Primaire"))
                    .cornerRadius(8)
                    .padding(.bottom,32)

            }
        }
    }
}

struct AlerteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AlerteDetailedView()
    }
}
