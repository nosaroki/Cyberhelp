//
//  StructureChat.swift
//  CyberHelp
//
//  Created by apprenant 23 on 23/06/2023.
//

import Foundation
import SwiftUI
import CoreData



struct Conversation : Identifiable, Equatable {
    static func == (lhs: Conversation, rhs: Conversation) -> Bool {
        lhs.id == rhs.id
    }
    
    var id = UUID()
    var user : Profil
    var conversation : [Message]
    var isRead : Bool
}

struct Message : Identifiable {
    var id = UUID()
    var chat : String
    var destinataire : Bool
    var heure : Date
}

struct ScrollViewOffsetKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    
    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
        value = nextValue()
    }
}


var profilU = Profil(profilPic: Image("userPhoto"), prénom: "Isabelle", nom: "Pinchon", age: 19, genre: Genre.femme, telephone: 0606060606, adresse: Adresse(codePostal: "3 rue de la Liberté", nomCommune: "75015 Paris"), email: "isabelle@pinchon.fr", mdp: "Bellegossedu93/", isPro: false)

var profilP = Profil(profilPic: Image("ProPhoto"), prénom: "Jasmine", nom: "Lebeau", age: 42, genre: Genre.femme, telephone: 0122334455, adresse: Adresse(codePostal: "99 rue de Charonne", nomCommune: "75011 Paris"), siret: 57773082900197, email: "jasmine@gmail.com", mdp: "J4imel3sfra!ses", isPro: true)

var profil2P = Profil(profilPic: Image("ProPhoto"), prénom: "Marie-Charlotte", nom: "Dubois", age: 54, genre: Genre.femme, telephone: 0102010201, adresse: Adresse(codePostal: "3 rue de la Vilette", nomCommune: "Paris"), email: "mariecharlotte@gmail.com", mdp: "A3edkenc", isPro: true)

var patapo = Profil(profilPic: Image("userPhoto"), prénom: "Patapo", nom: "topata", age: 18, genre: .homme, telephone: 0103040203, adresse: Adresse(codePostal: "75018", nomCommune: "Paris"), email: "patapo@gmail.com", mdp: "patapo", isPro: false)



