//
//  ChatVM.swift
//  CyberHelp
//
//  Created by apprenant 23 on 23/06/2023.
//

import Foundation

class ChatViewModel: ObservableObject {
    
    @Published var conversations = conversationsPro
    
    
    func markConversationAsRead(at index: Int) {
           conversations[index].isRead = true
       }
    
    func sendMessage(conversation : Conversation, message : String) {
        let index = conversations.firstIndex(where: { $0.id == conversation.id })
        conversations[index!].conversation.append(Message(chat: message, destinataire: false, heure: Date.now))
    }
    
}

let date1 = Calendar.current.date(bySettingHour: 13, minute: 10, second: 0, of: Date())!
let date2 = Calendar.current.date(bySettingHour: 13, minute: 16, second: 0, of: Date())!
let date3 = Calendar.current.date(bySettingHour: 13, minute: 32, second: 0, of: Date())!

var conversationsPro : [Conversation] = [
    Conversation(user: profilP, conversation: [
        Message(chat: "J'ai été victime de Cyber-Harcèlement, pouvez-vous m'aider ?", destinataire: false, heure: date1),
        Message(chat: "Bonjour Katie, Je suis désolée d'apprendre que vous subissez du Cyber-harcèlement sur votre profil Instagram.Sachez que vous n'êtes pas seule. Si vous avez besoin d'un soutien psychologique, je suis là pour vous aider.", destinataire: true, heure: date2),
        Message(chat: "Pouvons-nous convenir d'un rendez-vous à votre cabinet ?", destinataire: false, heure: date3),
    ], isRead: false)
]

var conversationsUser : [Conversation] = [
    Conversation(user: profilU, conversation: [
        Message(chat: "J'ai été victime de Cyber-Harcèlement, pouvez-vous m'aider ?", destinataire: true, heure: Date.now),
        Message(chat: "Bonjour Katie, Je suis désolée d'apprendre que vous subissez du Cyber-harcèlement sur votre profil Instagram.Sachez que vous n'êtes pas seule. Si vous avez besoin d'un soutien psychologique, je suis là pour vous aider.", destinataire: false, heure: Date.now),
        Message(chat: "Pouvons-nous convenir d'un rendez-vous à votre cabinet ?", destinataire: true, heure: Date.now),
    ], isRead: false),
    Conversation(user: profilU, conversation: [
        Message(chat: "J'ai été victime de Cyber-Harcèlement, pouvez-vous m'aider ?", destinataire: true, heure: Date.now)
    ], isRead: true),
    Conversation(user: profilU, conversation: [
        Message(chat: "J'ai été victime de Cyber-Harcèlement, pouvez-vous m'aider ?", destinataire: true, heure: Date.now)
    ], isRead: true),
]



