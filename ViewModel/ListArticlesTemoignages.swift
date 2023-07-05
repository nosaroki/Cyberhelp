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
        Article(image: "dating", titre: "J'ai été harcelé sur une application de rencontre", publication: "Publié le 3 juillet 2023 à 17h33", content: "Aujourd'hui nous parlons de harcèlement et plus particulièrement du cyberharcèlement qui se développe en grande pompe depuis ces dernières années."),
        Article(image: "harass", titre: "J'ai enfin réussi à arrêter de subir", publication: "Publié le 3 juillet 2023 à 12h09", content: "blablabla"),
        Article(image: "bullying", titre: "Il y avait tellement de messages, de comptes... J'étais face à une montagne", publication: "Publié le 2 juillet 2023 à 23h45", content: "oui oui"),
        Article(image: "vulnerable", titre: "faire un titre mon sauce", publication: "Publié le 1er juillet 2023 à 11h13", content: "non merci aled c tro")
    ]
    
    // suite des articles ici

}
