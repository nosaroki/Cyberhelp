//
//  GuideView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct GuideView: View {
    var body: some View {
        ZStack{
            Color("Neutre")
            VStack{
                Text("Guide")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                VStack{
                    Image("non")
                        .resizable()
                        .frame(height: 250)
                    Text("blablabla")
                }
                .background(.white)
                .cornerRadius(8)
                .padding()
            }
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
