//
//  SignalementView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI

struct SignalementView: View {
    var type =
    ["                              ","Insultes et menaces"
     //Réception de messages haineux, injurieux ou menaces
     ,"Diffamation"
     ,"Violation de la vie privée",
     "Honte en ligne",
     "Trolling",
     "Grooming"]
    @State private var selectedType = ""
    @State var description: String = "Écrire ici..."
    @State private var humeur: Double = 0
    @State private var Parler: Bool = false
    let Emoji1: String = "🤬"
    let Emoji2: String = "😡"
    let Emoji3: String = "☹️"
    let Emoji4: String = "😐"
    let Emoji5: String = "🙂"
    let Emoji6: String = "😃"
    let Emoji7: String = "😆"
    var body: some View {
        NavigationView {
        ScrollView{
        ZStack{
            Color("Neutre")
                .ignoresSafeArea()
            VStack{
                // NavigationStack{
                Text("Selectionne le type de harcèlement")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("DeepBlue"))
                    .padding(.bottom)
                    .padding(.top, 50.0)
                Text("Type de signalement")
                    .foregroundColor(Color("DeepBlue"))
                Button (){
                }
            label: {
                Picker("Chosir le type de signalement", selection: $selectedType) {
                    ForEach(type, id: \.self) {
                        Text($0)
                    }
                    .frame(width: 250)
                    .tint(.black)
                }
                .background(Color.white)
                .cornerRadius(8)
                //     Image(systemName: "arrowtriangle.down.square.fill")
                //        .frame(width: 10.0, height: 10.0)
                //       .tint(.orange)
                //       .padding(.leading, 150.0)
                
                //   .pickerStyle(.inline)
            }
            .padding()
            .cornerRadius(15.0)
                //    .background(Color.orange)
                
                //   Text ("\(selectedType) : ")
                
                if selectedType == "Insultes et menaces" {
                    Text("Réception de messages haineux, injurieux ou menaces")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                }
                
                else if selectedType == "Diffamation" {
                    Text("Propagation de fausses informations ou de rumeurs")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                }
                
                else if selectedType == "Violation de la vie privée" {
                    Text("En captant, enregistrant ou transmettant, sans le consentement de leur auteur, des paroles prononcées à titre privé ou confidentiel")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                }
                
                else if selectedType == "Honte en ligne" {
                    Text("Publication de photos ou de vidéos humiliantes")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                }
                
                else if selectedType == "Trolling"{
                    Text("Provocation délibérée de la victime pour susciter des réactions négatives ou des conflits")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                }
                
                else if selectedType == "Grooming"{
                    Text("Manipulation et exploitation d’une personne vulnérable, souvent mineur, par un prédateur en ligne")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                }
                
                else {
                    Text("")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                }
                Spacer()
                Spacer()
                VStack{
                    Text("Peux-tu nous en dire plus sur le cyber-harcèlement que tu subies ?")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .multilineTextAlignment(.center)
                    
                        TextEditor(text: $description)
                        .scaledToFit()
                      //  .lineSpacing(5)
                        .padding(.top)
                        //    .padding(.bottom, 200.0)
                            .padding(.horizontal)
                        //  Form {
                        //       TextField(text: $description, prompt: Text("Écrire ici..."))
                        //      {
                        //          Text("Description")
                        //     }
                        //   }
                        //}
                    }
                    .padding(.bottom, 100.0)
                VStack{
                    Text("Que ressens-tu aujourd'hui")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .padding(.vertical)
                    Group{
                        HStack{
                            //   Text(Emoji1)
                            //      .font(.largeTitle)
                            //      .padding(.trailing)
                            Text(Emoji2)
                                .font(.largeTitle)
                                .padding(.trailing)
                            Text(Emoji3)
                                .font(.largeTitle)
                                .padding(.trailing)
                            Text(Emoji4)
                                .font(.largeTitle)
                                .padding(.trailing)
                            Text(Emoji5)
                                .font(.largeTitle)
                                .padding(.trailing)
                            Text(Emoji6)
                                .font(.largeTitle)
                            //        .padding(.trailing)
                            //     Text(Emoji7)
                            //        .font(.largeTitle)
                        }
                        //.padding(.bottom, -10.0)
                        //     LinearGradient(
                        //          colors: [.red, .blue, .green, .yellow],
                        //         startPoint: .leading,
                        //         endPoint: .trailing
                        //     )
                        
                        //.mask
                        (Slider(value: $humeur, in: -100...100))
                        //  (Slider(value: $humeur, in: -100...100))
                            .tint(Color(.green))
                            .padding()
                        
                        //    Text("\(celsius, specifier: "%.1f") Celsius is \(celsius * 9 / 5 + 32, specifier: "%.1f") Fahrenheit")
                        
                        Text("Partage nous les faits")
                            .fontWeight(.bold)
                            .foregroundColor(Color("DeepBlue"))
                            .padding(.vertical, 30.0)
                            .padding(.top, 50.0)
                        
                        Button {
                            
                        } label: {
                            HStack {
                                Image(systemName: "plus.square.fill")
                                    .padding(.trailing, 5.0)
                                    .frame(width: 10.0, height: 10.0)
                                Text("Joindre des fichiers")
                            }
                        }
                        .padding()
                        .background(Color.orange)
                        .clipShape(Capsule())
                        .tint(.white)
                        .padding()
                            NavigationLink(destination: Signalement_Plan()){
                              //  Button (action: { Parler = true })
                          //  label: {
                                Text("Je veux parler")
                            //}
                            .background(Color(red: 0.217, green: 0.632, blue: 0.792))
                            .buttonStyle(.bordered)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding(.top)
                            }
                        }
                    }
                }
            }
        }
    }
  }
}
struct SignalementView_Previews: PreviewProvider {
    static var previews: some View {
        SignalementView()
    }
}
