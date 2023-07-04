//
//  TabviewsU.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct TabviewU: View {
    init() {
    UITabBar.appearance().backgroundColor = UIColor.white
    }
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
                    AccueilView()
                        .tabItem {
                            if selectedIndex == 0 {
                                Image("homeFilled")
                            } else {
                                Image("home")
                            }
                            Text("Accueil")
                        }
                        .tag(0)
                    
                    GuideView()
                        .tabItem {
                            if selectedIndex == 1 {
                                Image("shieldFilled")
                            } else {
                                Image("shield")
                            }
                            Text("Guide")
                        }
                        .tag(1)
                    
                    SignalementView()
                        .tabItem {
                            if selectedIndex == 2 {
                                Image("flagFilled")
                            } else {
                                Image("flag")
                            }
                            Text("Signalement")
                        }
                        .tag(2)
                    
                    ChatView()
                        .tabItem {
                            if selectedIndex == 3 {
                                Image("commentsFilled")
                            } else {
                                Image("comments")
                            }
                            Text("Chat")
                        }
                        .tag(3)
                    
                    ConnexionView()
                        .tabItem {
                            if selectedIndex == 4 {
                                Image("userFilled")
                            } else {
                                Image("user")
                            }
                            Text("Profil")
                        }
                        .tag(4)
                }
                .accentColor(Color("DeepBlue"))
            }
        }

struct TabviewU_Previews: PreviewProvider {
    static var previews: some View {
        TabviewU()
    }
}
