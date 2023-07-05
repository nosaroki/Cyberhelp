//
//  SignalementView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI
import PhotosUI

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
    @State var description: String = " Écrire ici..."
    @State private var humeur: Double = 0
    @State private var Parler: Bool = false
    @State private var currentValue = 6.0
    
    @State private var image = UIImage()
    @State private var showPhotoSheet = false
    let Emoji1: String = "🤬"
    let Emoji2: String = "😡"
    let Emoji3: String = "☹️"
    let Emoji4: String = "😐"
    let Emoji5: String = "🙂"
    let Emoji6: String = "😃"
    let Emoji7: String = "😆"
    let gradient = Gradient(colors: [
    Color.red,
    Color.pink,
    Color.orange,
    Color.yellow,
    Color.white
    ])

    
    var body: some View {
        NavigationView {

        ZStack{
            Color("Neutre")
                .edgesIgnoringSafeArea(.top)
            VStack{
                ScrollView{
                // NavigationStack{
                Text("Selectionne le type de harcèlement")
                        .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color("DeepBlue"))
                  //  .padding(.bottom)
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
                    Type(description:"Réception de messages haineux, injurieux ou menaces")
                }
                
                else if selectedType == "Diffamation" {
                    Type(description:"Propagation de fausses informations ou de rumeurs")
                }
                
                else if selectedType == "Violation de la vie privée" {
                    Type(description:"En captant, enregistrant ou transmettant, sans le consentement de leur auteur, des paroles prononcées à titre privé ou confidentiel")
                }
                
                else if selectedType == "Honte en ligne" {
                    Type(description:"Publication de photos ou de vidéos humiliantes")
                }
                
                else if selectedType == "Trolling"{
                    Type(description:"Provocation délibérée de la victime pour susciter des réactions négatives ou des conflits")
                }
                
                else if selectedType == "Grooming"{
                    Type(description:"Manipulation et exploitation d’une personne vulnérable, souvent mineur, par un prédateur en ligne")
                }
                
                else {
                    Text("")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.blue)
                }
               VStack{
                    Text("Peux-tu nous en dire plus sur le cyber-harcèlement que tu subies ?")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 15.0)
                        TextEditor(text: $description)
                        .cornerRadius(7)
                        .scaledToFit()
                        .padding([.leading, .trailing], 25.0)
                        //  Form {
                        //       TextField(text: $description, prompt: Text("Écrire ici..."))
                        //      {
                        //          Text("Description")
                        //     }
                        //   }
                        //}
                    }
               
                VStack{
                    Text("Que ressens-tu aujourd'hui")
                        .fontWeight(.bold)
                        .foregroundColor(Color("DeepBlue"))
                        .padding(.vertical)
                    Group{
                       /* HStack{
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
                        }*/
                        //.padding(.bottom, -10.0)

                       /* LinearGradient(
                             colors: [.red, .blue, .green, .yellow],
                            startPoint: .leading,
                            endPoint: .trailing
                        )*/
                        //.mask
                        HStack{
                            //   Text(Emoji1)
                            //      .font(.largeTitle)
                            //      .padding(.trailing)
                            Text(Emoji2)
                                .font(.largeTitle)
                                .padding(.leading, 25)
                        (Slider(value: $humeur, in: -100...100)
                    /*     {
                                     Text("Slider")
                                 } minimumValueLabel: {
                                     Text(Emoji2).font(.largeTitle).fontWeight(.bold)
                                 } maximumValueLabel: {
                                     Text(Emoji6).font(.largeTitle).fontWeight(.bold)
                                 }*/
                            .tint(Color.clear)
                            .background(LinearGradient(gradient: gradient, startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(7)
                       

                          //  .background(Color.yellow)
                           // .padding(.horizontal, 25.0)
                        )
                        
                        
                        //  (Slider(value: $humeur, in: -100...100))
                        //    .tint(Color("CAGradientLayer"))
                            Text(Emoji6)
                                .font(.largeTitle)
                                .padding(.trailing, 25.0)
                            }
                        
                        //    Text("\(celsius, specifier: "%.1f") Celsius is \(celsius * 9 / 5 + 32, specifier: "%.1f") Fahrenheit")
                        
                        Text("Partage nous les faits")
                            .fontWeight(.bold)
                            .foregroundColor(Color("DeepBlue"))
                            .padding(.top, 25.0)
                        
                        Button {showPhotoSheet = true
                            
                        } label: {
                            HStack {
                                Image(systemName: "plus.square.fill")
                                    .padding(.leading)
                                    .frame(width: 1.0, height: 1.0)
                                Text("Joindre des fichiers")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .padding(.leading, 11.0)
                            }
                        }
                        .padding(.all, 10.0)
                        .background(Color("Primaire"))
                        .cornerRadius(7)
                        .tint(.white)
                        .padding(.horizontal)
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        Image(uiImage: self.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                            NavigationLink(destination: Signalement_Plan()){
                              //  Button (action: { Parler = true })
                          //  label: {
                                Text("Je veux parler")
                                .padding(.vertical, 2.0)
                            //}
                            .frame(width: 150, height: 50)
                            .background(Color("Primaire"))
                            .buttonStyle(.borderedProminent)
                            .cornerRadius(7)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            
    
                            }
                        }
                }
                }
            }
        }
    }
        .sheet(isPresented: $showPhotoSheet) {
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
    }
  }
}
struct SignalementView_Previews: PreviewProvider {
    static var previews: some View {
        SignalementView()
    }
}

struct Type: View {
    var description: String
    var body: some View {
        ZStack{
            Rectangle()
                .cornerRadius(7)
                .foregroundColor(.white)
                .padding(.horizontal, 25.0)
            Text(description)
                .foregroundColor(Color("Orange"))
            // .multilineTextAlignment(.leading)
            //  .foregroundStyle(.blue)
                .multilineTextAlignment(.leading)
                .lineLimit(4)
                .padding(.horizontal, 27.0)
                .padding(.vertical)
        }
    }
}
