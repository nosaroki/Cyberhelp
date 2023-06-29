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
        Article(image: "harcelement", titre: "PARLER DE CYBERHARCÈLEMENT POUR NE PAS RESTER LES BRAS CROISÉS", content: "Aujourd'hui nous parlons de harcèlement et plus particulièrement du cyberharcèlement qui se développe en grande pompe depuis ces dernières années."),
        Article(image: "hand", titre: "PROTÉGER SES ENFANTS DU CYBERHARCÈLEMENT: FAUT-IL LES ESPIONNER ?", content: "blablabla"),
        Article(image: "stop", titre: "LES NOUVELLES MESURES ANTI-CYBERHARCÈLEMENT", content: "oui oui"),
        Article(image: "cyberbullying", titre: "PAS OUF LE CYBERHARCÈLEMENT FAUT VRAIMENT CESSER ÇA", content: "non merci aled c tro")
    ]
    
    // suite des articles ici

}
