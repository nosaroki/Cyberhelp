//
//  GuideVm.swift
//  CyberHelp
//
//  Created by apprenant68 on 23/06/2023.
//

import Foundation
import SwiftUI

class GuideClass:ObservableObject {
    
    @Published var guides : [Guide] = []//(titre: "N'aie pas honte d'en parler", image: Image("non"), description: "Personne ne mérite d’être harcelé. Le harcèlement peut toucher tous les âges, toutes religions, tous les sexes et toutes les classes sociales. Personne n’est à l’abri mais personne ne devrait avoir à subir ça. Le problème ce n’est pas toi, mais celui qui te harcèle."),
    //     Guide(titre: "Ne pas partager, liker ou commenter des contenus inappropriés!", image: Image("publication"), description: "Certaines personnes ont tendance à partager ou commenter des photos ou vidéos pour montrer leur mécontentement et espérer que celles-ci seront supprimées! \rErreur ! Il ne faut surtout pas faire ça pour ne pas donner plus de visibilité et d’ampleur à la situation. En effet, plus un contenu est partagé, liké et commenté et plus il est visible. Ton action, qui partait d’une bonne intention, a  donc un effet inverse et envenime la situation."),
    //     Guide(titre: "Signale les contenus problématiques", image: Image("alerte"), description: "Dans la suite du précédent conseil, pour stopper la diffusion d’un contenu inapproprié, l’unique solution est de le signaler et surtout pas de le partager. \r En faisant ça, tu contribues à la protection de la victime contre d’autres éventuels harceleurs !"),]
    
    
    func fetchGuides() async {
        let apikey = "keyEYFu7vnvje4WGZ"
        if let url = URL(string: "https://api.airtable.com/v0/appI1pmjlNk6RRdZ2/tblvrijCWtqVhmEPh") {
            do {
                var request = URLRequest(url: url)
                request.setValue("Bearer \(apikey)", forHTTPHeaderField: "Authorization")
                
                let (data, _) = try await URLSession.shared.data(for: request)
                if let decodedResponse = try? JSONDecoder().decode(GuideCollect.self, from: data) {
                    
                    guides = decodedResponse.guides
                    
                }
            } catch {
                print("Invalid data")
            }
        }
    }
    
}
