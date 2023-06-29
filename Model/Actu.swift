//
//  Actu.swift
//  CyberHelp
//
//  Created by Kelian Daste on 29/06/2023.
//

import SwiftUI

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

struct Temoignage : Identifiable {
    var id = UUID()
    var titre : String
    var image : Image
    var description : String
}


enum SignalType : String,CaseIterable {
    case insultes = "Insultes et menaces"
    case diffamation = "Diffamation"
    case trolling = "Trolling"
    case grooming = "Grooming"
    case violation = "Violation de la vie privée"
}
