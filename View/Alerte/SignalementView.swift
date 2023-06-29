//
//  SignalementView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct SignalementView: View {
    var body: some View {
        ZStack{
            Color("Neutre")
                .edgesIgnoringSafeArea(.top)
            VStack{
            Text("Selectionne le type de harcèlement")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom)
                Text("Type de signalement")
            }
        }
    }
}

struct SignalementView_Previews: PreviewProvider {
    static var previews: some View {
        SignalementView()
    }
}
