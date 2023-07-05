//
//  StructureProfil.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import Foundation
import SwiftUI


struct Adresse : Codable {
    var codePostal: String
    var nomCommune: String
}

struct Profil : Identifiable {
    var id = UUID()
    var profilPic : Image
    var prénom : String
    var nom : String
    var age : Int
    var genre : Genre
    var telephone : Int
    var adresse : Adresse
    var siret : Int?
    var email : String
    var mdp : String
    var isPro : Bool

}

struct Signalement : Identifiable {
    var id = UUID()
    var type : SignalType
    var nom : String
    var description : String
    var read: Bool
    }







struct contact : Identifiable {
    
    var id : UUID = UUID()
    
    var picture : Image
    var name : String

    var statu : statu
    
    func colorStatu() -> Color {
        
        switch statu {
        case .enLigne:
            return .green
        case .horsLigne:
            return .gray
        }
    }
    
}


var Jean : contact = contact(picture: Image("gateauAuChocolat"), name: "Jean",  statu: .enLigne)
var Lise : contact = contact(picture: Image("gateauAuChocolat"), name: "Lise.P",  statu: .horsLigne)
var Katie : contact = contact(picture: Image("gateauAuChocolat"), name: "Katie",  statu: .horsLigne)
var Sarah : contact = contact(picture: Image("gateauAuChocolat"), name: "Sarah",  statu: .enLigne)
var Nico50 : contact = contact(picture: Image("gateauAuChocolat"), name: "Nico50",  statu: .horsLigne)


var tableauContacts : [contact] = [Jean, Lise, Katie, Sarah, Nico50]




// MARK: - GuideCollect
struct GuideCollect: Codable {
    let records: [Record]
    
var guides : [Guide] {
    return records.map { rec in
        var guide = rec.fields
        guide.id = rec.id
        return guide
    }
}
}

// MARK: - Record
struct Record: Codable {
    let id, createdTime: String
    let fields: Guide
}

//var userArray : [Profil] = [profilP, profilU]
