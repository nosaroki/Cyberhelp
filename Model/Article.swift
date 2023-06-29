//
//  ArticlesView.swift
//  CyberHelp
//
//  Created by Apprenant 87 on 26/06/2023.
//

import Foundation
import SwiftUI

struct Article: Identifiable {
    let id = UUID()
    let image : String
    let titre : String
    let content : String
}



