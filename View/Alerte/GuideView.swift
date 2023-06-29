//
//  GuideView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct GuideView: View {
    
    @EnvironmentObject var guideVM: GuideClass
    
    var body: some View {
        
        ZStack{
            Color("Neutre")
            VStack{
//                Text("Guide")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
                ScrollView{
                    ForEach(guideVM.guides) { conseils in
                        SujetView(guideInView: conseils)
                    }
                }
            }
        }
        .onAppear{
            Task {
                await guideVM.fetchGuides()
            }
        }
        .refreshable {
            Task{
                await guideVM.fetchGuides()
            }
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
            .environmentObject(GuideClass())
    }
}
