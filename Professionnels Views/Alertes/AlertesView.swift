//
//  AlertesView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct Alerte: View {
    var signalementInView: Signalement
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    HStack {
                        Text("Alerte: \(signalementInView.type)")
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(.bottom, -4.0)
                    .font(.title2)
                    .fontWeight(.semibold)
                    HStack(alignment: .top){
                        Text("\(signalementInView.nom):")
                            .fontWeight(.semibold)
                            .foregroundColor(Color("DeepBlue"))
                        Text(signalementInView.description)
                            .foregroundColor(Color("DeepBlue"))
                            .lineLimit(2)
                        Spacer()
                    }
                }
                .padding(8)
                if signalementInView.read == false
                {
                    Image (systemName: "exclamationmark.shield.fill")
                        .padding(.leading)
                        .foregroundColor(.red)
                        .font(.system(size: 64))
                }
                else {
                    Image(systemName: "exclamationmark.shield")
//                        .padding()
                        .foregroundColor(.gray)
                        .font(.system(size: 64))
                }
            }
            .padding()
        }
        .background(Color(.red).opacity(0.05))
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(.red, lineWidth: 2)
        )
        .padding()
        
    }
}

struct Alerte_Previews: PreviewProvider {
    static var previews: some View {
        Alerte(signalementInView: Signalement(type: "Grooming", nom: "popo", description: "bkeopakv oekopkvepokvpok  aeopv keop", read: false) )
    }
}
