//
//  PageLogoView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 29/06/2023.
//

import SwiftUI
import UIKit

struct PageLogoView: View {
    
//    let imgswu : String="Logo-Appli"
    @State private var hideFirstView = false
    
    let text = "Cyberhelp"
    @State private var animatedText = ""
    
    
    func animateText() {
        for (index, character) in text.enumerated() {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.1) {
                animatedText.append(character)
            }
        }
    }
    
    
    
    var body: some View {
        ZStack{
            if !hideFirstView {
                Color("Neutre")
                    .ignoresSafeArea()
               HStack {
                    Image("LogoSeul")
                        .resizable()
                        .frame(width: 80, height: 80)
                    Text(animatedText)
                        .font(.system(size: 45))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("DeepBlue"))
                    
                }
                .onAppear {
                    animateText()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation(.easeIn(duration: 1)) {
                         
                            hideFirstView = true
                        }
                    }
                    
                    
                    
                }.opacity(hideFirstView ? 0 : 1)
            } else {
                        
                AccueilView()
                            
                }
            }
        }
    
    
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
}

struct PageLogoView_Previews: PreviewProvider {
    static var previews: some View {
        PageLogoView()
    }
}
