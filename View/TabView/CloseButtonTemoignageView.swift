//
//  CloseButtonTemoignageView.swift
//  CyberHelp
//
//  Created by Apprenant 87 on 04/07/2023.
//

import SwiftUI

struct CloseButtonTemoignageView: View {
    @Binding var isShown : Bool
    
    var body: some View {
        Button {
            isShown = false
        } label: {
            Image(systemName: "xmark")
                .font(.title)
                .foregroundColor(Color("Orange"))
        }
        .accessibilityLabel("Fermer la fenêtre")
        
    }
}

struct CloseButtonTemoignageView_Previews: PreviewProvider {
    static var previews: some View {
        CloseButtonTemoignageView(isShown: .constant(true))
    }
}

