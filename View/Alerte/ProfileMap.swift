//
//  ProfileMap.swift
//  CyberHelp
//
//  Created by apprenant96 on 29/06/2023.
//

import Foundation
import CoreLocation
import SwiftUI

struct  ProfileMap: Identifiable {
        var id = UUID()
        var profilPic : String
        var prénom : String
        var nom : String
        var age : Int
        var genre : Genre
        var telephone : String
        var adresse : Adresse
        var siret : Int?
        var email : String
        var mdp : String
        var isPro : Bool
        var latitude: Double
        var longitude : Double

}

var profil1: ProfileMap = ProfileMap(profilPic: "psychologue1", prénom: "Margot", nom: "Harsel", age: 49, genre: Genre.femme, telephone: "0984342143", adresse: Adresse(codePostal: "8 Rue Basfroi", nomCommune: "75011 Paris"), email: "isabelle@pinchon.fr", mdp: "Bellegossedu93/", isPro: true, latitude: 48.85417, longitude: 2.380661)
var profil2: ProfileMap = ProfileMap(profilPic: "PhotoPro", prénom: "Jasmine", nom: "Lebeau", age: 42, genre: Genre.femme, telephone: "0122334455", adresse: Adresse(codePostal: "99 rue de Charonne", nomCommune: "75011 Paris"), siret: 57773082900197, email: "jasmine@gmail.com", mdp: "J4imel3sfra!ses", isPro: true, latitude: 48.8544245, longitude: 2.383752)

var userCoor : [ProfileMap] = [profil1, profil2]
