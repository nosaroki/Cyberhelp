//
//  AlertesVM.swift
//  CyberHelp
//
//  Created by apprenant68 on 27/06/2023.
//

import Foundation
import SwiftUI

class AlertClass: ObservableObject {
    @Published var signalements: [Signalement] = [
        Signalement(type: .grooming, nom: "Jeanne", description: "Bonjour depuis quelques jours je reçois des messages d'une personne que je ne connais pas, en plus de ça elle a l'air beaucoup plus agée que moi. \rJe ne sais pas trop quoi faire.", read: false),
        Signalement(type:.trolling, nom: "Mini", description: "Bonjour des personnes n'arretent pas de se moquer de moi en réagisant à mes photos instagram, qu'est ce que je peux faire ?", read: true)]
}
