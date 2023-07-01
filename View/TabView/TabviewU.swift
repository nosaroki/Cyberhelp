//
//  TabviewsU.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct TabviewU: View {
    var body: some View {
        TabView {
            AccueilView()
                .tabItem {
                    Image("home")
                    Text("Accueil")
                }
            GuideView()
                .tabItem {
                    Image("shield")
                    Text("Guide")
                }
            
            SignalementView()
                .tabItem {
                    Image("flag")
                    Text("Signalement")
                }
            ChatView()
                .tabItem {
                    Image("comments")
                    Text("Chat")
                }
            ConnexionView()
                .tabItem {
                    Image("user")
                    Text("Profil")
                }
        }
        .accentColor(Color("DeepBlue"))
    }
}

struct TabviewU_Previews: PreviewProvider {
    static var previews: some View {
        TabviewU()
    }
}
