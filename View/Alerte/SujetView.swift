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
            AsyncImage(url: URL(string: guideInView.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading){
                Text(guideInView.titre)
                    .foregroundColor(Color("DeepBlue"))
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.bottom,4)
                Text(guideInView.description)
                    .foregroundColor(Color("DeepBlue"))
                    .padding(.bottom, 8)
            }
            .padding()
            .background(.white)
        }
        .background(.white)
        .cornerRadius(8)
        .padding()
    }
}


struct SujetView_Previews: PreviewProvider {
    static var previews: some View {
        SujetView(guideInView: Guide(titre: "conseil 1", image: "https://i.imgur.com/NQSC42Z.jpg", description: "egkepgkoaeveopeakogk k oakgo keapogk opak o"))
    }
}
