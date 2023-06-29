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
    var type : TypeDeSgnlmt
    var nom : String
    var description : String
    var read: Bool
    }

enum TypeDeSgnlmt : String,CaseIterable {
    case insultes = "Insultes et menaces"
    case diffamation = "Diffamation"
    case trolling = "Trolling"
    case grooming = "Grooming"
    case violation = "Violation de la vie privée"
}

struct Temoignage : Identifiable {
    var id = UUID()
    var titre : String
    var image : Image
    var description : String
}

struct Actu : Identifiable {
    var id = UUID()
    var titre : String
    var image : Image
    var description : String
}

struct Guide : Identifiable, Codable {
    var id : String = ""
    var titre : String
    var image : String
    var description : String
    
    enum CodingKeys: String, CodingKey {
        case titre
        case image
        case description
    }
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
