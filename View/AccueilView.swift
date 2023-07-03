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
    @State var isShown : Bool = false
    @State var addTemoignage : Bool = false
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.white
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(named: "Primaire")], for: .selected)
        UISegmentedControl.appearance()
            .backgroundColor = UIColor(named: "Primaire")
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        
    }
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("Neutre")
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack{
                        
                        Picker((""), selection: $selectedTopic) {
                            ForEach(TopicOption.allCases, id: \.self) { topic in
                                Text(topic.rawValue)
                            }
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding(.leading)
                    .padding(.trailing)
//                    .padding(.bottom)
                    .foregroundColor(Color("DeepBlue"))
                    
                    VStack (alignment: .leading){
                        
                        ForEach (getList()) {
                            displayActu in
                            if displayActu.id == getList().first!.id{
                                NavigationLink {
                                    ArticlesDetailsView(article: displayActu)
                                } label: {
                                    ZStack (alignment: .bottom){
                                        Image(displayActu.image)
                                            .resizable()
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 200)
                                        Text(displayActu.titre)
                                            .padding(8)
                                            .foregroundColor(Color("DeepBlue"))
                                            .font(.system(size: 16))
                                            .fontWeight(.bold)
                                            .frame(maxWidth: .infinity)
                                            .padding(.horizontal)
                                            .background(Color.white)
                                            .opacity(0.9)
                                    }
                                    .cornerRadius(24)
                                    .padding(.bottom, 24)
                                }
                            }
                            else {
                                NavigationLink {
                                    ArticlesDetailsView(article: displayActu)
                                } label: {
                                    HStack {
                                        Image(displayActu.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 100)
                                            .clipped()
                                        
                                        Text(displayActu.titre)
                                            .foregroundColor(Color("DeepBlue"))
                                            .multilineTextAlignment(.leading) .font(.system(size: 16))
                                            .fontWeight(.bold)
                                            .frame(width: 260)
                                    }
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .frame(width: 370)
                                }
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Bonjour Éléonore")
                .navigationBarTitleDisplayMode(.inline)
                
                if selectedTopic == .temoignages {
                    AddButtonTemoignageView(addTemoignage: $addTemoignage)
                }
            }
        }
        .sheet(isPresented: $addTemoignage) {
            AddTemoignageView(addTemoignage: $addTemoignage)
        }
    }
    
    func getList() -> [Article] {
        switch selectedTopic {
        case .actu:
            return ArticlesActuVM.listActu
        case .event:
            return ArticlesEventsVM.listEvents
        case .temoignages:
            return ArticlesTemoignagesVM.listTemoignages
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

