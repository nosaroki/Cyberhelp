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
                    HStack{
                        Text("Nouvelle alerte: \(signalementInView.type.rawValue)")
                            .foregroundColor(Color("DeepBlue"))
                            .font(.callout)
                            .lineLimit(1)
                        
                        Spacer()
                    }
                    .padding(.bottom, -4.0)
                    .font(.body)
                    .fontWeight(.semibold)
                    HStack(alignment: .top){
                        Text("\(signalementInView.nom): \(signalementInView.description)")
                            .font(.footnote)
                            .foregroundColor(Color("DeepBlue"))
                            .opacity(0.75)
                            .lineLimit(3)
                        Spacer()
                    }
                }
                .padding(8)
                    Image (systemName: "exclamationmark.shield")
                        .padding(.leading)
                        .foregroundColor(Color("DeepBlue"))
                        .opacity(0.75)
                        .font(.system(size: 64))
            }
            .padding()
        }
        .background(.white)
        .background(Color(.orange).opacity(0.05))
        .overlay(
            Rectangle()
                .frame(width: 4)
                .padding(.trailing, 360.0)
                .foregroundColor(.orange)
                
        )
        .padding()
        
    }
}

struct Alerte_Previews: PreviewProvider {
    static var previews: some View {
        Alerte(signalementInView: Signalement(type: .grooming, nom: "popo", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum", read: false) )
    }
}
