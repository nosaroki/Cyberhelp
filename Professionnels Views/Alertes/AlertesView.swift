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
                        Text("Nouvelle alerte: \(signalementInView.type)")
                            .foregroundColor(Color("DeepBlue"))
                            .font(.callout)
                            .lineLimit(1)
                        
                        Spacer()
                    }
                    .padding(.bottom, -4.0)
                    .font(.body)
                    .fontWeight(.semibold)
                    HStack(alignment: .top){
                        Text("\(signalementInView.nom):")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("DeepBlue"))
                            .opacity(0.75)
                        Text(signalementInView.description)
                            .font(.footnote)
                            .foregroundColor(Color("DeepBlue"))
                            .opacity(0.75)
                            .lineLimit(2)
                        Spacer()
                    }
                }
                .padding(8)
                if signalementInView.read == false
                {
                    Image (systemName: "exclamationmark.shield.fill")
                        .padding(.leading)
                        .foregroundColor(.orange)
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
        .background(Color(.orange).opacity(0.05))
        .overlay(
            Rectangle()
                .frame(width: 4)
                .padding(.trailing, 360.0)
                .foregroundColor(.orange)
                
        )
        //        .overlay(
        //            RoundedRectangle(cornerRadius: 8)
        //                .stroke(.red, lineWidth: 2)
        //        )
        .padding()
        
    }
}

struct Alerte_Previews: PreviewProvider {
    static var previews: some View {
        Alerte(signalementInView: Signalement(type: "Grooming", nom: "popo", description: "bkeopakv oekopkvepokvpok  aeopv keop", read: false) )
    }
}
