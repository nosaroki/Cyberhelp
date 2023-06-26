//
//  ModelView.swift
//  CyberHelp
//
//  Created by Apprenant 87 on 26/06/2023.
//

import Foundation
import SwiftUI

class ListArticlesActu: ObservableObject {
    internal init(listeActu: [Article] = [ Article(image: "bell", titre: "au secours", content: "non vraiment au secours")]) {
        self.listeActu = listeActu
    }
    
    @Published var listeActu : [Article] = [ Article(image: "bell", titre: "au secours", content: "non vraiment au secours")]
    
    // suite des articles ici
//
//CrashReportError: Preview is missing environment object "ListArticlesActu"
//
// CyberHelp crashed due to missing environment of type: ListArticlesActu. To resolve this add `.environmentObject(ListArticlesActu(...))` to the appropriate preview.
}
