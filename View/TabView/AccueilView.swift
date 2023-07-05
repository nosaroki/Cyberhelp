//
//  AccueilView.swift
//  CyberHelp
//
//  Created by Apprenant 87 on 05/07/2023.
//

import SwiftUI

struct AccueilView: View {
    
    
    @EnvironmentObject var ArticlesActuVM : ListArticlesActu
    @EnvironmentObject var ArticlesEventsVM : ListArticlesEvents
    @EnvironmentObject var ArticlesTemoignagesVM : ListArticlesTemoignages
    @EnvironmentObject var profileVM: ListesDesProfiles
    
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
                    .padding(.leading)
                    .padding(.trailing)
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
                                    .padding(.bottom, 16)
                                }
                            }
                            else {
                                NavigationLink {
                                    ArticlesDetailsView(article: displayActu)
                                } label: {
                                    HStack(spacing: 16) {
                                        Image(displayActu.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 100)
                                            .clipped()
                                        
                                        VStack(alignment: .leading, spacing: 8) {
                                            Text(displayActu.titre)
                                                .foregroundColor(Color("DeepBlue"))
                                                .multilineTextAlignment(.leading) .font(.system(size: 16))
                                                .fontWeight(.bold)
                                            
                                            
                                            
                                            Text(displayActu.publication)
                                                .foregroundColor(Color("Secondaire"))
                                                .multilineTextAlignment(.leading) .font(.system(size: 12))
                                                .fontWeight(.thin)
                                        }
                                        Spacer()
                                    }
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    
                                }
                                .padding(.bottom, 16)
                                
                            }
                        }
                    }
                    .padding()
                }
                .navigationTitle("Bonjour\(getProfileName())")
                .navigationBarTitleDisplayMode(.inline)
                
                if selectedTopic == .temoignages {
                    AddButtonTemoignageView(addTemoignage: $addTemoignage)
                }
            }
        }
        .sheet(isPresented: $addTemoignage) {
            ModaleTemoignages(isModaleShown: $addTemoignage)
        }
    }
    
    func getProfileName()-> String{
        if let profile = profileVM.monProfil {
            return " \(profile.prenom!)"
        }
        return ""
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

struct AccueilView_Previews: PreviewProvider {
    static var previews: some View {
        AccueilView()
            .environmentObject(ListArticlesActu())
            .environmentObject(ListArticlesEvents())
            .environmentObject(ListArticlesTemoignages())
            .environmentObject(ListesDesProfiles())
    }
}
