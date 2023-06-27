//
//  NewsView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI
import UIKit



struct AccueilView: View {
    
    
    @EnvironmentObject var ArticlesActuVM : ListArticlesActu
    @EnvironmentObject var ArticlesEventsVM : ListArticlesEvents
    @EnvironmentObject var ArticlesTemoignagesVM : ListArticlesTemoignages
    
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
                    switch selectedTopic {
                    case .actu:
                        ForEach (ArticlesActuVM.listActu) {
                            displayActu in
                            if displayActu.id == ArticlesActuVM.listActu.first!.id{
                                ZStack (alignment: .bottom){
                                    Image(displayActu.image)
                                        .resizable()
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 200)
                                    Text(displayActu.titre)
                                        .foregroundColor(Color("DeepBlue"))
                                        .font(.system(size: 16))
                                        .fontWeight(.bold)
                                        .frame(maxWidth: .infinity)
                                        .padding(.horizontal)
                                        .background(Color.white)
                                        .opacity(0.9)
                                }
                                .padding(.horizontal, 16)
                                .cornerRadius(24)
                            }
                            else {
                                HStack {
                                    Image(displayActu.image)
                                    
                                    Text(displayActu.titre)
                                        .foregroundColor(Color("DeepBlue"))
                                        .font(.system(size: 16))
                                        .fontWeight(.bold)
                                }
                                .background(Color.white)
                                .cornerRadius(10)
                            }
                        }
                        
                    case .event:
                        ForEach (ArticlesEventsVM.listEvents) {
                            displayEvent in
                            
                            if displayEvent.id == ArticlesEventsVM.listEvents.first!.id{
                                
                                ZStack (alignment: .bottom){
                                    Image(displayEvent.image)
                                        .resizable()
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 200)
                                    Text(displayEvent.titre)
                                        .foregroundColor(Color("DeepBlue"))
                                        .font(.system(size: 16))
                                        .fontWeight(.bold)
                                        .frame(maxWidth: .infinity)
                                        .padding(.horizontal)
                                        .background(Color.white)
                                        .opacity(0.9)
                                }
                                .padding(.horizontal, 16)
                                .cornerRadius(24)
                            }
                            else {
                                HStack {
                                    Image(displayEvent.image)
                                    
                                    Text(displayEvent.titre)
                                        .foregroundColor(Color("DeepBlue"))
                                        .font(.system(size: 16))
                                        .fontWeight(.bold)
                                }
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.horizontal)
                            }
                        }
                        
                    case .temoignages:
                        ForEach (ArticlesTemoignagesVM.listTemoignages) {
                            displayTemoignages in
                            
                            if displayTemoignages.id == ArticlesTemoignagesVM.listTemoignages.first!.id{
                                ZStack (alignment: .bottom){
                                    Image(displayTemoignages.image)
                                        .resizable()
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 200)
                                    Text(displayTemoignages.titre)
                                        .foregroundColor(Color("DeepBlue"))
                                        .font(.system(size: 16))
                                        .fontWeight(.bold)
                                        .frame(maxWidth: .infinity)
                                        .padding(.horizontal)
                                        .background(Color.white)
                                        .opacity(0.9)
                                }
                                .padding(.horizontal, 16)
                                .cornerRadius(24)
                            }
                            else{
                                HStack {
                                    Image(displayTemoignages.image)
                                    
                                    Text(displayTemoignages.titre)
                                        .foregroundColor(Color("DeepBlue"))
                                        .font(.system(size: 16))
                                        .fontWeight(.bold)
                                }
                                .background(Color.white)
                                .cornerRadius(10)
                            }
                        }
                    }
                }
            }
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        AccueilView()
            .environmentObject(ListArticlesActu())
            .environmentObject(ListArticlesEvents())
            .environmentObject(ListArticlesTemoignages())
    }
}

