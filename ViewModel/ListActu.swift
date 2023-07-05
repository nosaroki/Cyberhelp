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
        Article(image: "harcelement", titre: "Parler de cyberharcèlement pour ne pas rester les bras croisés", publication: "Publié le 2 juillet 2023 à 13h04", content: "Aujourd'hui nous parlons de harcèlement et plus particulièrement du cyberharcèlement qui se développe en grande pompe depuis ces dernières années."),
        Article(image: "triste", titre: "Protéger les enfants du cyberharcèlement : faut-il les espionner ?", publication: "Publié le 30 juin 2023 à 18h18", content: "blablabla"),
        Article(image: "stop1", titre: "Les nouvelles mesures anti cyberharcèlement", publication: "Publié le 27 juin 2023 à 13h13", content: "oui oui"),
        Article(image: "dark", titre: "Que faire en cas de cyberharcèlement ?", publication: "Publié le 22 juin 2023 à 7h02", content: "Voici quelques conseils à suivre lorsque vous petes victimes de cyberharcèlement : \r\r\r*1.* Ne répondez pas aux commentaires ou aux messages qui s’apparentent à du cyberharcèlement. Vous risqueriez d’empirer la situation en y montrant de l’intérêt.\r\r*2.*Parlez-en à un tiers de confiance. Dans une situation de cyberharcèlement, le plus important est de ne pas se taire et de ne pas rester isolé. Il faut en parler, par exemple, à un membre de la famille (conjoint, parents, frères, sœurs, etc.), à un ami, ou encore, dans le cadre scolaire, à un adulte de l’école ou à un camarade de classe.\r\r*3.*Conservez les preuves. Faites des captures d’écran, conservez les messages et les informations liées aux auteurs du cyberharcèlement, qui pourront vous servir pour signaler et caractériser cette situation, voire pour déposer plainte.\r\r*4.*Verrouillez au plus vite les comptes de réseaux sociaux. Modifiez les paramètres de confidentialité de vos comptes de manière à en restreindre la visibilité des harceleurs. Il existe ainsi des options de confidentialité pour « ne plus me trouver », « ne pas afficher/partager ma liste d’amis ». Il est également possible de « bannir » les visiteurs ou contacts indésirables et de bloquer les auteurs de messages harcelants.\r\r*5.*Signalez les contenus ou les comportements illicites auprès des plateformes sur lesquelles ils sont présents afin de les faire supprimer.\r\r*6.*Demandez à ce que les contenus harcelants ne soient plus référencés par les moteurs de recherche. Si ces publications vous concernant apparaissent dans les résultats de moteurs de recherche, il est possible de demander de ne plus les voir afficher.\r\r*7.*Signalez les faits sur la plateforme dédiée du ministères de l’intérieur en cas d’injure, de diffamation, de menace, d’incitation à la haine, à la discrimination, à la violence ou de mise en danger : Internet-signalement.gouv.fr.\r\r*8.*Déposez plainte au commissariat de police ou à la brigade de gendarmerie ou encore par écrit au procureur de la République du tribunal judiciaire dont vous dépendez en fournissant toutes les preuves en votre possession. Vous pouvez être accompagné gratuitement dans cette démarche par une association de France Victimes au 116 006 (appel et service gratuits), numéro d’aide aux victimes du ministère de la Justice. Service ouvert 7 jours sur 7 de 9h à 19h.\r\r\r *Quels numéros contacter en cas de cyberharcèlement ?*\r\r\r Vous pouvez contacter le 3018, 7 jours sur 7 de 9h à 23h (appel et service gratuits). Il s’agit d’une ligne nationale d’écoute et de conseil anonyme et confidentielle destinée aux personnes confrontées à des situations de cyberharcèlement ou de violences numériques.")
    ]
    
    // suite des articles ici

}
