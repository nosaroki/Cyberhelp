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
        Article(image: "dating", titre: "J'AI ÉTÉ HARCELÉ SUR UNE APPLICATION DE RENCONTRE", publication: "Publié le 3 juillet 2023 à 17h33", content: "Aujourd'hui nous parlons de harcèlement et plus particulièrement du cyberharcèlement qui se développe en grande pompe depuis ces dernières années."),
        Article(image: "harass", titre: "J'AI ENFIN RÉUSSI À AGIT POUR ARRÊTER DE SUBIR", publication: "Publié le 3 juillet 2023 à 12h09", content: "blablabla"),
        Article(image: "bullying", titre: "IL Y AVAIT TELLEMENT DE MESSAGES, DE COMPTES... J'ÉTAIS FACE À UNE MONTAGNE", publication: "Publié le 2 juillet 2023 à 23h45", content: "oui oui"),
        Article(image: "vulnerable", titre: "PAS OUF LE CYBERHARCÈLEMENT FAUT CESSER ÇA DE OUF", publication: "Publié le 1er juillet 2023 à 11h13", content: "non merci aled c tro")
    ]
    
    // suite des articles ici

}
