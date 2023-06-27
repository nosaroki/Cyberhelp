//
//  ModelView.swift
//  CyberHelp
//
//  Created by Apprenant 87 on 26/06/2023.
//

import Foundation
import SwiftUI

class ListArticlesActu: ObservableObject {

    @Published var listActu : [Article] = [
        Article(image: "harcelement", titre: "Parlez du cyberharcèlement pour ne pas rester les bras croisés", content: "Aujourd'hui nous parlons de harcèlement et plus particulièrement du cyberharcèlement qui se développe en grande pompe depuis ces dernières années."),
        Article(image: "hand", titre: "Protéger ses enfants du cyberharcèlement: faut-il les espionner ?", content: "blablabla"),
        Article(image: "stop", titre: "Les nouvelles mesures anti-cyberharcèlement", content: "oui oui"),
        Article(image: "cyberbullying", titre: "Pas ouf le cyberharcèlement", content: "non merci aled c tro")
    ]
    
    // suite des articles ici

}
