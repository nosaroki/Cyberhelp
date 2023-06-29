//
//  CyberHelpApp.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

@main
struct CyberHelpApp: App {
    
    @StateObject var guideVM = GuideClass()
    @StateObject var alerteVM = AlertClass()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(guideVM)
        }
    }
}
