//
//  GuideVm.swift
//  CyberHelp
//
//  Created by apprenant68 on 23/06/2023.
//

import Foundation
import SwiftUI

class GuideClass:ObservableObject {
    
    @Published var guides : [Guide] = []
    
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
