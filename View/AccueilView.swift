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
                    .edgesIgnoringSafeArea(.top)
                
                ScrollView {
                    VStack{
                        
                        Picker((""), selection: $selectedTopic) {
                            ForEach(TopicOption.allCases, id: \.self) { topic in
                                Text(topic.rawValue)
                            }
                        }
                    }
                    .pickerStyle(.segmented)
                    .padding()
                    .foregroundColor(Color("DeepBlue"))
                    
                    VStack (alignment: .leading){
                        switch selectedTopic {
                        case .actu:
                            ForEach (ArticlesActuVM.listActu) {
                                displayActu in
                                if displayActu.id == ArticlesActuVM.listActu.first!.id{
                                    NavigationLink {
                                        ActuDetailsView()
                                    } label: {
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
                                        //                                        .padding(.horizontal, 16)
                                        .cornerRadius(24)
                                    }
                                    
                                    
                                }
                                else {
                                    NavigationLink {
                                        ActuDetailsView()
                                    } label: {
                                        HStack {
                                            Image(displayActu.image)
                                                .resizable()
                                                .scaledToFill()
                                            //                                                .frame(width)
                                            
                                            Text(displayActu.titre)
                                                .foregroundColor(Color("DeepBlue"))
                                                .font(.system(size: 16))
                                                .fontWeight(.bold)
                                        }
                                        .background(Color.white)
                                        .cornerRadius(10)
                                        .frame(width: 370)
                                    }
                                    
                                    
                                }
                            }
                            
                        case .event:
                            ForEach (ArticlesEventsVM.listEvents) {
                                displayEvent in
                                
                                if displayEvent.id == ArticlesEventsVM.listEvents.first!.id{
                                    NavigationLink {
                                        EventsDetailsView()
                                    } label: {
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
                                        //                                    .padding(.horizontal, 16)
                                        .cornerRadius(24)
                                        
                                    }
                                    
                                    
                                }
                                else {
                                    NavigationLink {
                                        EventsDetailsView()
                                    } label: {
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
                            }
                            
                        case .temoignages:
                            ForEach (ArticlesTemoignagesVM.listTemoignages) {
                                displayTemoignages in
                                
                                if displayTemoignages.id == ArticlesTemoignagesVM.listTemoignages.first!.id{
                                    NavigationLink {
                                        TemoignagesDetailsView()
                                    } label: {
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
                                    
                                    
                                }
                                else{
                                    NavigationLink {
                                        TemoignagesDetailsView()
                                    } label: {
                                        HStack {
                                            Image(displayTemoignages.image)
                                            
                                            Text(displayTemoignages.titre)
                                                .foregroundColor(Color("DeepBlue"))
                                                .font(.system(size: 16))
                                                .fontWeight(.bold)
                                        }
                                        .background(Color.white)
                                        .cornerRadius(10)
                                        .frame(width: 370)
                                    }
                                    
                                    
                                }
                            }
                            // Modal
                            Button {
                                isShown.toggle()
                            } label: {
                                
                                Text("+")
                                    .fontWeight(.bold)
                                
                            }
                            .buttonStyle(.borderedProminent)
                            .tint(.mint)
                            .zIndex(1)
                            .padding(.leading, 250)
                            .padding()
                            .sheet(isPresented: $isShown) {
                                ModaleTemoignages(isModaleShown: $isShown)
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Bonjour")
                .navigationBarTitleDisplayMode(.inline)
                
            }// fin navview
            
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

