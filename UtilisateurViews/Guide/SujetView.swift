//
//  SujetView.swift
//  CyberHelp
//
//  Created by apprenant68 on 22/06/2023.
//

import SwiftUI

struct SujetView: View {
    var guideInView : Guide
    
    var body: some View {
        
        VStack{
                guideInView.image
                    .resizable()
                    .frame(height: 250)
            VStack(alignment: .leading){
                Text(guideInView.titre)
                    .foregroundColor(Color("Primaire"))
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom)
                Text(guideInView.description)
                    .foregroundColor(Color("DeepBlue"))
            }
            .padding()
            }
            .background(.white)
            .cornerRadius(8)
            .padding()
        }
}


struct SujetView_Previews: PreviewProvider {
    static var previews: some View {
        SujetView(guideInView: GuideClass().guides[0])
    }
}
