//
//  TemoignagesDetailsView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct ArticlesDetailsView: View {
    var article : Article
    
    var body: some View {
        
        ZStack{
            Color("Neutre")
                .ignoresSafeArea()
            
            ScrollView{
                
                VStack {
                    
                    ZStack (alignment: .bottom){
                        Image(article.image)
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .frame(height: 200)
                        Text(article.titre)
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
                    .padding()
                    
                  
                    
                    Text(article.content)
                        .foregroundColor(Color("DeepBlue"))
                        .font(.body)
                        .padding()
                    
                    
                    
                } // end vstack
                .navigationTitle(article.titre)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ArticlesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesDetailsView(article: Article(image: "scolaire", titre: "WEBINAIRE: CYBERHARCÈLEMENT EN MILIEU SCOLAIRE", content: "**Le cyber-harcèlement c’est quoi ?**\r\rEn milieu scolaire se caractérise par des interactions néfastes en ligne produites par des élèves du même établissement scolaire de la victime et/ou d’un autre établissement scolaire. \rIl peut se définir comme dit précédemment par des violences verbales, physiques et/ou psychologiques.\r\r**Un phénomène dit « invisible » !**\r\rCe phénomène reste toutefois « invisible » aux yeux du personnel enseignant car il s’exerce souvent en dehors du temps des élèves dans l’établissement. Toutefois, chaque situation est différente, mais il va bien souvent de pair avec le harcèlement scolaire. La victime vit non seulement le harcèlement au sein de l’établissement, mais le vit aussi en dehors à cause de la montée de l’utilisation des réseaux sociaux par les mineurs. En effet, selon les chiffres du Ministère de l’Education Nationale, de la Jeunesse et des Sports, en 2019, 2176 cas ont été signalés auprès des référents académiques, ainsi que 77 742 sollicitations du 3020 ont été effectuées. En 2020, suite au confinement et à la fermeture des établissements scolaires, le cyber-harcèlement a dramatiquement augmenté. La plateforme d’écoute de"))
    }
}
