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
let date4 = Calendar.current.date(bySettingHour: 8, minute: 23, second: 0, of: Date())!
let date5 = Calendar.current.date(bySettingHour: 8, minute: 34, second: 0, of: Date())!
let date6 = Calendar.current.date(bySettingHour: 8, minute: 36, second: 0, of: Date())!
let date7 = Calendar.current.date(bySettingHour: 8, minute: 45, second: 0, of: Date())!
let date8 = Calendar.current.date(bySettingHour: 13, minute: 32, second: 0, of: Date())!


var conversationsPro : [Conversation] = [
    Conversation(user: profilP, conversation: [
        Message(chat: "J'ai été victime de Cyber-Harcèlement, pouvez-vous m'aider ?", destinataire: false, heure: date1),
        Message(chat: "Bonjour Katie, Je suis désolée d'apprendre que vous subissez du Cyber-harcèlement sur votre profil Instagram.Sachez que vous n'êtes pas seule. Si vous avez besoin d'un soutien psychologique, je suis là pour vous aider.", destinataire: true, heure: date2),
        Message(chat: "Pouvons-nous convenir d'un rendez-vous à votre cabinet ?", destinataire: false, heure: date3),
    ], isRead: false),
    Conversation(user: profil2P, conversation: [
    Message(chat: "J'ai été victime de Cyber-Harcèlement, pouvez-vous m'aider ?", destinataire: false, heure: date4),
    Message(chat: "Bonjour Katie, je suis désolée pour votre situation, est-ce que vous avez consulté le guide pour trouver des premières réponses à votre problème ?", destinataire: true, heure: date5),
    Message(chat: "Oui mais je souhaiterais parler, est-ce qu'on peut convenir d'un rendez-vous ?", destinataire: false, heure: date6),
    Message(chat: "Je n'ai malheureusemet pas de disponibilités avant le mois prochain. Est-ce que vous êtes toujours intéressé ?", destinataire: true, heure: date7)
    ], isRead: true)
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



