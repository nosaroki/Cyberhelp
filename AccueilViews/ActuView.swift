//
//  NewsView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI
import UIKit



struct ActuView: View {
    
    @EnvironmentObject var ArticlesActuVM : ListArticlesActu
    
    @State private var selectedTopic: TopicOption = .actu
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.white
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(named: "Primaire")], for: .selected)
        UISegmentedControl.appearance()
            .backgroundColor = UIColor(named: "Primaire")
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)

    }
    
    var body: some View {
            ZStack{
                Color("Neutre")
                    .edgesIgnoringSafeArea(.top)
                
                ScrollView {
                VStack{
                    Text("Bonjour") //  + ProfilPro.prenom
                        .font(.system(size: 24))
                        .foregroundColor(Color("DeepBlue"))
                    
                    Picker((""), selection: $selectedTopic) {
                        ForEach(TopicOption.allCases, id: \.self) { topic in
                            Text(topic.rawValue)
                        }
                    }
                    }
                    .pickerStyle(.segmented)
                    .padding()
                    .foregroundColor(Color("DeepBlue"))

                    VStack{
                        
                        ForEach (ArticlesActuVM.listeActu) {
                            displayActu in
                            
                            Text(displayActu.content)
                            Text(displayActu.titre)
                        }
                    }
            }
                
                
        }
            
           
        }
    }
    
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            ActuView()
            .environmentObject(ListArticlesActu())
        }
    }

