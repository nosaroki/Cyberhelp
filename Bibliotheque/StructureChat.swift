//
//  StructureChat.swift
//  CyberHelp
//
//  Created by apprenant 23 on 23/06/2023.
//

import Foundation
import SwiftUI



struct ConversationP : Identifiable {
    var id = UUID()
    var userU : ProfilU
    var conversation : [Message]
}

struct ConversationU : Identifiable {
    var id = UUID()
    var userP : ProfilPro
    var conversation : [Message]
}

struct Message : Identifiable {
    var id = UUID()
    var chat : String
    var destinataire : Bool
    var heure : String
}


