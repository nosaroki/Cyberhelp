//
//  ListTemoignages.swift
//  CyberHelp
//
//  Created by Apprenant 87 on 26/06/2023.
//

import Foundation
import SwiftUI

class ListArticlesTemoignages: ObservableObject {
    
    @Published var listTemoignages : [Article] = [
        Article(image: "dating", titre: "J'ai été harcelé sur une application de rencontre", content: "Aujourd'hui nous parlons de harcèlement et plus particulièrement du cyberharcèlement qui se développe en grande pompe depuis ces dernières années."),
        Article(image: "harass", titre: "J'ai enfin réussi à agir pour arrêter de subir", content: "blablabla"),
        Article(image: "bullying", titre: "“Il y avait tellement de messages, de comptes... J'étais face à une montagne", content: "oui oui"),
        Article(image: "vulnerable", titre: "Pas ouf le cyberharcèlement", content: "non merci aled c tro")
    ]
    
    // suite des articles ici

}
