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
        Article(image: "scolaire", titre: "Webinaire : cyberharcèlement en milieu scolaire", publication: "Publié le 1er juillet 2023 à 11h56",content: "**Le cyber-harcèlement c’est quoi ?**\r\rEn milieu scolaire se caractérise par des interactions néfastes en ligne produites par des élèves du même établissement scolaire de la victime et/ou d’un autre établissement scolaire. \rIl peut se définir comme dit précédemment par des violences verbales, physiques et/ou psychologiques.\r\r**Un phénomène dit « invisible » !**\r\rCe phénomène reste toutefois « invisible » aux yeux du personnel enseignant car il s’exerce souvent en dehors du temps des élèves dans l’établissement. Toutefois, chaque situation est différente, mais il va bien souvent de pair avec le harcèlement scolaire. La victime vit non seulement le harcèlement au sein de l’établissement, mais le vit aussi en dehors à cause de la montée de l’utilisation des réseaux sociaux par les mineurs. En effet, selon les chiffres du Ministère de l’Education Nationale, de la Jeunesse et des Sports, en 2019, 2176 cas ont été signalés auprès des référents académiques, ainsi que 77 742 sollicitations du 3020 ont été effectuées. En 2020, suite au confinement et à la fermeture des établissements scolaires, le cyber-harcèlement a dramatiquement augmenté. La plateforme  d’écoute de l’Association e-Enfance (Net Écoute), une association pour la protection des mineurs sur Internet, a enregistré une augmentation de 30% des appels, générant deux fois plus de signalements aux plateformes. L’utilisation plus importantes des outils numériques ainsi que la fermeture des établissements scolaires ont entrainé une hausse des cyber-violences tel que le sextorsion (chantage sexuel à la webcam) , le revenge porn (se venger de son ancien.ne partenaire en diffusant des photos/vidéos dénudées et personnelles de cette personne) ou une nouvelle tendance, les comptes « Fisha » qui sont créés pour dégrader l’image d’une personne, souvent au moyen d’images ou vidéos intimes.\r\r**L’enseignant.e face au cyber-harcèlement** \r\r***Repérer***\r\rL’enseignant.e peut repérer le cyber-harcèlement en observant le comportement des élèves et repérer les élèves isolés des autres. En écoutant les propos tenus dans l’établissement scolaire, il peut repérer une victime ou un.e témoin, voir même un.e harceleur.se.\r\r***Signaler***\r\rLorsque l’élève ou un.e témoin se confie à l’enseignant.e de sa situation. L’adulte informe l’élève victime qu’il va partager cette information avec la direction ou l’équipe ressource de l’école, qui assurera la gestion de cette situation et mettra en place le protocole contre le harcèlement. Par la suite, la direction ou l’équipe ressource recueille la parole de la ou des victimes, des témoins s’il y en a, des parents mais aussi de l’auteur des faits. Il est fortement recommandé de ne pas régler seul les situations de harcèlement, mais de privilégier le travail en équipe.\r\r***Accompagner***\r\rLe.a professeur.e, accompagné.e de l’équipe ressource peut orienter les élèves victimes de cyber-harcèlement vers une prise en charge (soins, soutien psychologique, conseil juridique). Il.elle peut également apporter une écoute à l’élève s’il en a besoin."),
        Article(image: "united", titre: "Colloque internationale contre le cyberharcèlement à Nancy", publication: "Publié le 30 juin 2023 à 19h30", content: "blablabla"),
        Article(image: "lutte", titre: "Webinaire : au coeur de la lutte contre le cyberharcèlement", publication: "Publié le 27 juin 2023 à 9h43", content: "oui oui"),
        Article(image: "luttededos", titre: "Cyberharcèlement des femmes et des personnes LGBTQIA+", publication: "Publié le 26 juin 2023 à 14h41", content: "non merci aled c tro")
    ]
    
    // suite des articles ici
}
