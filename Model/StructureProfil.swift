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
