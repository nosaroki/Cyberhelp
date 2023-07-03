//
//  PageLogoView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 29/06/2023.
//

import SwiftUI

struct PageLogoView: View {
    
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
            Color("Neutre")
                .ignoresSafeArea()
            //            Image("LogoCyberhelp")
            //                .resizable()
            //                .frame(width: 270.0, height: 66.65)
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
            }
        }
    }
}


struct PageLogoView_Previews: PreviewProvider {
    static var previews: some View {
        PageLogoView()
    }
}
