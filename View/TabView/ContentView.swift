//
//  ContentView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var chatVM = ChatViewModel()
    var body: some View {
        
        TabviewU()
            .environmentObject(chatVM)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
