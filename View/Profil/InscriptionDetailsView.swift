//
//  InscriptionDetailsUView.swift
//  CyberHelp
//
//  Created by apprenant 23 on 21/06/2023.
//

import SwiftUI
import PhotosUI

struct InscriptionDetailsView: View {
    
    @ObservedObject var profileVM: ListesDesProfiles
    
    //@EnvironmentObject var ProfilsUVM: ListesDesProfilesU
    
     var isPro : Bool
    
//    @State private var avatarItem: PhotosPickerItem?
//    @State private var avatarImage: Image = Image(systemName: "person.circle.fill")
//
    //@State var photoprofil: UIImage?
    
    @State private var image = UIImage()
    @State private var showPhotoSheet = false
    
    
    @State var prenom : String = ""
    @State var nom : String = ""
    @State var age : String = ""
    @State var genre : Genre = .autre
    @State var telephone : String = ""
    @State var description : String = ""
    @State var adresse : String = ""
    @State var siret : String = ""
    @State var email : String = ""
    @State var mdp : String = ""
    
    @State private var idAdd: Bool = false
    
    @State private var isNameValid: Bool = true
    @State private var isEmailValid: Bool = true
    @State private var isPhoneNumberValid: Bool = true
    
    var body: some View {
        
       
            
            ZStack{
                Color("Neutre").edgesIgnoringSafeArea(.top)
                ScrollView{
                    VStack{
                        
                        VStack {
                            
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color("Primaire").opacity(0.2))
                                
                                
                                Image(uiImage: self.image)
                                    .resizable()
                                // .cornerRadius(50)
                                    .padding(.all, 4)
                                    .frame(width: 140, height: 140)
                                    .background(Color(hue: 0.566, saturation: 0.019, brightness: 0.789))
                                    .aspectRatio(contentMode: .fill)
                                    .clipShape(Circle())
                                    .padding(8)
                                
                            }
                            
                            Button {
                                showPhotoSheet = true
                            } label: {
                                Text("+ Photo profil")
                            }
                            .buttonStyle(.bordered)
                            .tint(Color("Primaire"))
                            
                        }
                        
                        
                        //VOIR AVEC KELIAN
                        
                        // code ESSAI

                        TextField("Email", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                            .background(isEmailValid ? Color.white : Color.red.opacity(0.3))

                        TextField("Numéro de téléphone", text: $telephone)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                            .background(isPhoneNumberValid ? Color.white : Color.red.opacity(0.3))


                        // fin code ESSAI

                        Button(action: {
                                      // Vérifier les validations
                                      validateFields()

                                      // Ajouter le code pour traiter les données d'inscription ici
                                      if isFormValid() {
                                       
                                      }
                                  }) {
                                      Text("S'inscrire")
                                          .padding()
                                          .foregroundColor(.white)
                                          .background(Color.blue)
                                          .cornerRadius(10)
                                  }
                                  .padding()
                        
                        
                        
                        Group{
                            formulaireString(textfeild: "Nom", nom: $nom)
                            formulaireString(textfeild: "Prenom", nom: $prenom)
                            formulaireInt(textfeild: "Age", age:$age)
                        }
                        
                        // Genre
                        HStack {
                            Text("Genre")
                                .font(.headline)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("DeepBlue"))
                                .padding(.leading)
                            Spacer()
                            
                            Picker("Auto-Join Hotspot", selection: $genre) {
                                
                                ForEach(Genre.allCases, id:\.self) { option in
                                    
                                    Text(option.rawValue)
                                        .foregroundColor(Color.orange)
                                }
                            }.pickerStyle(.inline)
                                .frame(width: 250, height: 40)
                            
                        }//fin genre
                        
                        Group{
                            formulaireString(textfeild: "description", nom: $description)
                            formulaireString(textfeild: "Adresse", nom: $adresse)
//                            formulaireInt(textfeild: "Telephone", age:$telephone)
                        }
                        
                        
                        
                        
                        
                        
                        
                        
                        if isPro == true {
                            formulaireInt(textfeild: "SIRET", age:$siret)
                        }
                        
//                         formulaireString(textfeild: "Email", nom: $email)
                            formulaireString(textfeild: "Mot de passe", nom: $mdp)
                        
                       
                            
                            NavigationLink( isActive: $idAdd){
                                
                                if isPro == true {
                                    ProfilPView()
                                    
                                }else{
                                    ProfilUView()
                                    
                                }
                            }label: {
                                
                        
                                Button {
                                    
                                    validateFields()

                                    // Ajouter le code pour traiter les données d'inscription ici
                                    if isFormValid() {
                                        
                                        profileVM.addProfilP(isPro: isPro, newImage: image.pngData() ?? Data(), newPrenom : prenom, newNom : nom, newAge : Int(age) ?? 0, newGenre : genre.rawValue , newDescription : description, newtelephone: Int(telephone) ?? 0, newSiret: siret , newAdresse : adresse, newEmail : email, newMdp : mdp)
                                        
                                        idAdd = true
                                        
                                        
                                    }
                                    
                                    
                                    
                                    
                                    
                                } label: {
                                    Text("Enregistrer")
                                }.buttonStyle(.borderedProminent)
                                    .tint(Color("Primaire"))
                                
                                //                        Spacer()
                            }.padding(5)
                            
                            
    
                    }
                }
            }
        
        .sheet(isPresented: $showPhotoSheet) {
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
        }
        
    }
        //VOIR AVEC KeLIAN

    func validateFields() {
         isNameValid = !nom.isEmpty
         isEmailValid = isValidEmail(email)
         isPhoneNumberValid = isValidPhoneNumber(telephone)
     }

     func isValidEmail(_ email: String) -> Bool {
         return email.contains("@") && email.contains(".")
     }

     func isValidPhoneNumber(_ phoneNumber: String) -> Bool {
         // Vérifiez si le numéro de téléphone contient uniquement des chiffres et a une longueur de 10 chiffres
         let phoneNumberCharacterSet = CharacterSet(charactersIn: "0123456789")
         let filtered = phoneNumber.unicodeScalars.filter { phoneNumberCharacterSet.contains($0) }
         return phoneNumber.count == 10 && filtered.count == phoneNumber.count
     }

     func isFormValid() -> Bool {
         return isNameValid && isEmailValid && isPhoneNumberValid
     }
    
        
    
}

    
    
    
struct InscriptionDetailsPView_Previews: PreviewProvider {
    static var previews: some View {
        InscriptionDetailsView( profileVM: ListesDesProfiles(), isPro: false)
    }
}
    
    
    
    struct formulaireString: View {
        var textfeild : String
        @Binding var nom : String

        var body: some View {
            HStack{

                Text(textfeild)
                    .font(.title2)
                    .foregroundColor(Color("DeepBlue"))
                    .padding(.leading)
                Spacer()
                TextField("", text: $nom)
                    .tint(.gray)
                    .frame(width: 220)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

            }
        }
    }
    struct formulaireInt: View {
        var textfeild : String
        @Binding var age : String

        var body: some View {
            HStack{

                Text(textfeild)
                    .font(.title2)
                    .foregroundColor(Color("DeepBlue"))
                    .padding(.leading)
                Spacer()
                TextField("", text: $age)
                    .keyboardType(.numberPad)
                    .tint(.gray)
                    .frame(width: 220)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

            }
        }
    }
