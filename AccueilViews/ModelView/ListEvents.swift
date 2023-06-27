//
//  ListEvents.swift
//  CyberHelp
//
//  Created by Apprenant 87 on 26/06/2023.
//

import Foundation
import SwiftUI

class ListArticlesEvents: ObservableObject {
    
    @Published var listEvents : [Article] = [
        Article(image: "scolaire", titre: "Webinaire : cyberharcèlement en milieu scolaire", content: "Le cyber-harcèlement c’est quoi? En milieu scolaire se caractérise par des interactions néfastes en ligne produites par des élèves du même établissement scolaire de la victime et/ou d’un autre établissement scolaire. Il peut se définir comme dit précédemment par des violences verbales, physiques et/ou psychologiques. Un phénomène dites « invisible » ! Ce phénomène reste toutefois « invisible » aux yeux du personnel enseignant car il s’exerce souvent en dehors du temps des élèves dans l’établissement. Toutefois, chaque situation est différente, mais il va bien souvent de pair avec le harcèlement scolaire. La victime vit non seulement le harcèlement au sein de l’établissement, mais le vit aussi en dehors à cause de la montée de l’utilisation des réseaux sociaux par les mineurs. En effet, selon les chiffres du Ministère de l’Education Nationale, de la Jeunesse et des Sports, en 2019, 2176 cas ont été signalés auprès des référents académiques, ainsi que 77 742 sollicitations du 3020 ont été effectuées. En 2020, suite au confinement et à la fermeture des établissements scolaires, le cyber-harcèlement a dramatiquement augmenté. La plateforme d’écoute de"),
        Article(image: "united", titre: "Colloque international contre le cyberharcèlement à Nancy", content: "blablabla"),
        Article(image: "lutte", titre: "Webinaire: au coeur de la lutte contre le cyberharcèlement", content: "oui oui"),
        Article(image: "luttededos", titre: "Cyberharcèlement des femmes et personnes LGBTQIA+", content: "non merci aled c tro")
    ]
    
    // suite des articles ici
}
