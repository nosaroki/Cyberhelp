//
//  ContentView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var chatVM = ChatViewModel()
    @StateObject var actuVM = ListArticlesActu()
    @StateObject var eventVM = ListArticlesEvents()
    @StateObject var temoignVM = ListArticlesTemoignages()
    @StateObject var alert = AlertClass()
    @StateObject var guideVM = GuideClass()
    @StateObject var profilVM = ListesDesProfiles()
    var body: some View {
        
        PageLogoView()
            .environmentObject(chatVM)
            .environmentObject(actuVM)
            .environmentObject(eventVM)
            .environmentObject(temoignVM)
            .environmentObject(alert)
            .environmentObject(guideVM)
            .environmentObject(profilVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
