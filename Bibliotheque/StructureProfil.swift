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
    var titre : String
    var humeur : String
    var description : String
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

struct Guide : Identifiable {
    var id = UUID()
    var titre : String
    var image : Image
    var description : String
}

