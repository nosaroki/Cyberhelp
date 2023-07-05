//
//  PageLogoView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 29/06/2023.
//

import SwiftUI
import UIKit

struct PageLogoView: View {
    
    //    let imgswu : String="Logo-Appli"
    @State private var hideFirstView = false
    
    let text = "Cyberhelp"
    @State private var animatedText = ""
    
    
    func animateText() {
        for (index, character) in text.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.1) {
                animatedText.append(character)
            }
        }
    }
    
    
    
    var body: some View {
        ZStack{
            if !hideFirstView {
                Color("Neutre")
                    .ignoresSafeArea()
                HStack {
                    Image("LogoSeul")
                        .resizable()
                        .frame(width: 80, height: 80)
                    Text(animatedText)
                        .font(.system(size: 45))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("DeepBlue"))
                    
                }
                .onAppear {
                    animateText()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation(.easeIn(duration: 1)) {
                            
                            hideFirstView = true
                        }
                    }
                    
                    
                    
                }.opacity(hideFirstView ? 0 : 1)
            } else {
                
                TabviewU()
                
            }
        }
    }
}

struct PageLogoView_Previews: PreviewProvider {
    static var previews: some View {
        PageLogoView()
    }
}
