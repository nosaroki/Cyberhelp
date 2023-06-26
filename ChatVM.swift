//
//  ChatVM.swift
//  CyberHelp
//
//  Created by apprenant 23 on 23/06/2023.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    //    @Published var conversationsP = [
    //        ConversationP(userU: "Katie", conversation: [Message])
    //    ]
    
    @Published var conversations = [
        ConversationP(userU: profilU, conversation: [
            Message(chat: "J'ai été victime de Cyber-Harcèlement, pouvez-vous m'aider ?", destinataire: true, heure: "12:49"),
            Message(chat: "Bonjour Katie, Je suis désolée d'apprendre que vous subissez du Cyber-harcèlement sur votre profil Instagram.Sachez que vous n'êtes pas seule. Si vous avez besoin d'un soutien psychologique, je suis là pour vous aider.", destinataire: false, heure: "13:14"),
            Message(chat: "pouvons-nous convenir d'un rendez-vous à votre cabinet ?", destinataire: true, heure: "13:14"),
        ])
    ]
}

