//
//  AddButtonTemoignageView.swift
//  CyberHelp
//
//  Created by Apprenant 87 on 29/06/2023.
//

import SwiftUI

struct AddButtonTemoignageView: View {
    @Binding var addTemoignage : Bool
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                Button {
                    addTemoignage = true
                } label: {
                    Image(systemName: "plus.square.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 45, height: 45)
                        .foregroundColor(Color("Primaire"))
                }
                .accessibilityLabel("Ajouter un témoignage")
            }
        }
        .padding(20)
    }
}

struct AddButtonTemoignageView_Previews: PreviewProvider {
    static var previews: some View {
        AddButtonTemoignageView(addTemoignage: .constant(true))
    }
}
