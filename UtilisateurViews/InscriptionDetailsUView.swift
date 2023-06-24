//
//  InscriptionDetailsUView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct InscriptionDetailsUView: View {
    
    //@State var photoprofil: UIImage?
    @State var prénom : String = "Prénom"
    @State var nom : String = "Nom"
    @State var age : String = "20"
    @State var genre : Genre = .autre
    @State var telephone : String = ""
    //@State var adresse : Adresse
    @State var siret : String = ""
    @State var email : String = "Email"
    @State var mdp : String = "Mot de passe"
    
   var body: some View {
        
       ZStack{
           Color("Neutre").edgesIgnoringSafeArea(.top)
           ScrollView{
               VStack{
                   
                   formulaireString( textfeild: "Nom", nom: $nom)
                   formulaireString( textfeild: "Prenom", nom: $prénom)
                   formulaireString( textfeild: "Email", nom: $email)
                   formulaireString( textfeild: "Mot de passe", nom: $mdp)
                   
                   formulaireInt(textfeild: "Age", age:$age)
                   formulaireInt(textfeild: "Telephone", age:$telephone)
                   formulaireInt(textfeild: "Siret", age:$siret)
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

struct formulaireString: View {
    var textfeild : String
    @Binding var nom : String
    
    var body: some View {
        HStack{
            
            Text(textfeild)
                .font(.title2)
                .foregroundColor(Color("DeepBlue"))
                .padding()
            Spacer()
            TextField("", text: $nom)
                .tint(.gray)
                .frame(width: 200)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
        }
    }
}
struct formulaireInt: View {
    var textfeild : String
    @Binding var age : String
    
    var body: some View {
        HStack{
            
            Text(textfeild)
                .font(.title2)
                .foregroundColor(Color("DeepBlue"))
                .padding()
            Spacer()
            TextField("", text: $age)
                .keyboardType(.numberPad)
                .tint(.gray)
                .frame(width: 200)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
        }
    }
}
