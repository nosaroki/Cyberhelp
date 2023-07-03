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
        ArticlesDetailsView(article: Article(image: "scolaire", titre: "WEBINAIRE: CYBERHARCÈLEMENT EN MILIEU SCOLAIRE", content: "**Le cyber-harcèlement c’est quoi ?**\r\rEn milieu scolaire se caractérise par des interactions néfastes en ligne produites par des élèves du même établissement scolaire de la victime et/ou d’un autre établissement scolaire. \rIl peut se définir comme dit précédemment par des violences verbales, physiques et/ou psychologiques.\r\r**Un phénomène dit « invisible » !**\r\rCe phénomène reste toutefois « invisible » aux yeux du personnel enseignant car il s’exerce souvent en dehors du temps des élèves dans l’établissement. Toutefois, chaque situation est différente, mais il va bien souvent de pair avec le harcèlement scolaire. La victime vit non seulement le harcèlement au sein de l’établissement, mais le vit aussi en dehors à cause de la montée de l’utilisation des réseaux sociaux par les mineurs. En effet, selon les chiffres du Ministère de l’Education Nationale, de la Jeunesse et des Sports, en 2019, 2176 cas ont été signalés auprès des référents académiques, ainsi que 77 742 sollicitations du 3020 ont été effectuées. En 2020, suite au confinement et à la fermeture des établissements scolaires, le cyber-harcèlement a dramatiquement augmenté. La plateforme  d’écoute de l’Association e-Enfance (Net Écoute), une association pour la protection des mineurs sur Internet, a enregistré une augmentation de 30% des appels, générant deux fois plus de signalements aux plateformes. L’utilisation plus importantes des outils numériques ainsi que la fermeture des établissements scolaires ont entrainé une hausse des cyber-violences tel que le sextorsion (chantage sexuel à la webcam) , le revenge porn (se venger de son ancien.ne partenaire en diffusant des photos/vidéos dénudées et personnelles de cette personne) ou une nouvelle tendance, les comptes « Fisha » qui sont créés pour dégrader l’image d’une personne, souvent au moyen d’images ou vidéos intimes.\r\r **L’enseignant.e face au cyber-harcèlement** \r\r *Repérer*\r\rL’enseignant.e peut repérer le cyber-harcèlement en observant le comportement des élèves et repérer les élèves isolés des autres. En écoutant les propos tenus dans l’établissement scolaire, il peut repérer une victime ou un.e témoin, voir même un.e harceleur.se. Même si ce n’est pas toujours évident, la victime de cyber-harcèlement peut également se confier à l’enseignant.e ainsi que les témoins de la situation peuvent également informer l’enseignant.e de la situation.\r\r*Signaler*\r\rLorsque l’élève ou un.e témoin se confie à l’enseignant.e de sa situation. L’adulte informe l’élève victime qu’il va partager cette information avec la direction ou l’équipe ressource de l’école, qui assurera la gestion de cette situation et mettra en place le protocole contre le harcèlement. Par la suite, la direction ou l’équipe ressource recueille la parole de la ou des victimes, des témoins s’il y en a, des parents mais aussi de l’auteur des faits. Il est fortement recommandé de ne pas régler seul les situations de harcèlement, mais de privilégier le travail en équipe.\r\r*Accompagner*\r\rLe.a professeur.e, accompagné.e de l’équipe ressource peut orienter les élèves victimes de cyber-harcèlement vers une prise en charge (soins, soutien psychologique, conseil juridique). Il.elle peut également apporter une écoute à l’élève s’il en a besoin. L’aide aux victimes et son entourage est organisée par l’établissement ou la municipalité."))
    }
}
