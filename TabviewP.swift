//
//  Tabview.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct TabviewP: View {
    
    
    var body: some View {
        TabView {
            ActuView()
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
                    Image("bell")
                    Text("Inventaire")
                }
            ChatView()
                .tabItem {
                    Image("comments")
                    Text("Chat")
                }
            ProfilPView()
                .tabItem {
                    Image("user")
                    Text("Profil")
                }
                
        }
        .accentColor(Color("DeepBlue"))
    }
}

struct Tabview_Previews: PreviewProvider {
    static var previews: some View {
        TabviewP()
    }
}
