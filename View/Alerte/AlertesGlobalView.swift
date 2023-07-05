//
//  AlertesGlobalView.swift
//  CyberHelp
//
//  Created by apprenant68 on 27/06/2023.
//

import SwiftUI

struct AlertesGlobalView: View {
    @EnvironmentObject var alerteVM: AlertClass
  
    var body: some View {
        NavigationView{
            ZStack{
                Color("Neutre")
                    .edgesIgnoringSafeArea(.top)
                
                NavigationLink( destination: AlerteDetailedView(),
                                label:{
                    VStack(){
                        HStack{
                            Text("Alertes")
                                .foregroundColor(Color("DeepBlue"))
                                .fontWeight(.bold)
                                .font(.title)
                            
                        }
                        .padding(.top, 8)
                        ScrollView{
                            ForEach(alerteVM.signalements) { alerte in
                                Alerte(signalementInView: alerte)
                            }
                            .multilineTextAlignment(.leading)
                        }
                    }
                })            }
        }
    }
}


struct AlertesGlobalView_Previews: PreviewProvider {
    static var previews: some View {
        AlertesGlobalView()
            .environmentObject(AlertClass())
    }
}
