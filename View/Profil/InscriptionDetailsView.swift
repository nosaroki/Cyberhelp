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
    
    @State private var image = UIImage()
    @State private var showPhotoSheet = false
    
    @State var prenom : String = ""
    @State var nom : String = ""
    @State var date : Date = Date()
    @State var genre : Genre = .autre
    @State var telephone : String = ""
    @State var description : String = ""
    @State var adresse : String = ""
    @State var siret : String = ""
    @State var email : String = ""
    @State var mdp : String = ""
    
    @State private var idAdd: Bool = false
    
    @State private var isTextValid: Bool = true
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
                            .background(Color(hue: 0.566, saturation: 0.057, brightness: 0.887))
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
                VStack (alignment: .leading, spacing: 30 ){
                    
                    Group{
                        VStack(alignment: .leading){
                            
                            Text("Nom")
                                .bold()
                                .foregroundColor(Color("DeepBlue"))
                                .padding(.leading)
                          
                            TextField("", text: $nom)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .overlay{
                                    if !isPhoneNumberValid{
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.red.opacity(0.3))
                                        
                                    }
                                }
                                .padding(.leading)
                                .padding(.trailing)
                               
                            
                            
                        }
                        
                        VStack(alignment: .leading){
                            
                            Text("Prenom")
                                .bold()
                                .foregroundColor(Color("DeepBlue"))
                                .padding(.leading)
                            
                            TextField("", text: $prenom)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .overlay{
                                    if !isPhoneNumberValid{
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.red.opacity(0.3))
                                        
                                    }
                                }
                                .padding(.leading)
                                .padding(.trailing)
                               
                        }
                        
                        VStack(alignment: .leading){
                            
                            Text("Date de naissance")
                                .bold()
                                .foregroundColor(Color("DeepBlue"))
                                .padding(.leading)
                            Spacer()
                            DatePicker("", selection: $date, displayedComponents: [.date])
                                .datePickerStyle(.compact)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.leading)
                                .padding(.trailing)
                            
                            
                            
                        }
                        
                        //                            formulaireString(textfeild: "Nom", nom: $nom)
                        //                            formulaireString(textfeild: "Prenom", nom: $prenom)
                        //                            formulaireInt(textfeild: "Age", age:$age)
                    }
                    VStack(alignment: .leading){
                        Text("Téléphone")
                            .bold()
                            .foregroundColor(Color("DeepBlue"))
                            .padding(.leading)
                        Spacer()
                        TextField("", text: $telephone)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .overlay{
                                if !isPhoneNumberValid{
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.red.opacity(0.3))
                                    
                                }
                            }
                            .padding(.leading)
                            .padding(.trailing)
                            
                    }
                    
                    // Genre
                    VStack (alignment: .leading){
                        Text("Genre")
                            .bold()
                            .foregroundColor(Color("DeepBlue"))
                            .padding(.leading)
                        Spacer()
                        
                        Picker(" ", selection: $genre) {
                            
                            ForEach(Genre.allCases, id:\.self) { option in
                                
                                Text(option.rawValue)
                                    .background(.white)
                                    .foregroundColor(Color("DeepBlue"))
                            }
                        }.pickerStyle(.inline)
                            .frame(height: 40)
                        
                    }//fin genre
                    
                    
                    
                    Group{
                        
                        VStack(alignment: .leading){
                            
                            Text("Description")
                                .bold()
                                .foregroundColor(Color("DeepBlue"))
                                .padding(.leading)
                            Spacer()
                            TextField("", text: $description)
//                                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .overlay{
                                    if !isTextValid {
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.red.opacity(0.3))
                                        
                                    }
                                }
                                .padding(.leading)
                                .padding(.trailing)
                                
                            
                            
                        }
                        
                        VStack(alignment: .leading){
                            
                            Text("Adresse")
                                .bold()
                                .foregroundColor(Color("DeepBlue"))
                                .padding(.leading)
                            Spacer()
                            TextField("", text: $adresse)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .overlay{
                                    if !isTextValid {
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.red.opacity(0.3))
                                        
                                    }
                                }
                                .padding(.leading)
                                .padding(.trailing)
                               
                            
                        }
                        //                            formulaireString(textfeild: "description", nom: $description)
                        //                            formulaireString(textfeild: "Adresse", nom: $adresse)
                    }
                    
                    
                    if isPro == true {
                        VStack(alignment: .leading){
                            Text("SIRET")
                                .bold()
                                .foregroundColor(Color("DeepBlue"))
                                .padding(.leading)
                            Spacer()
                            TextField("", text: $siret)
                                .keyboardType(.numberPad)
//                                .frame(width: 220)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .overlay{
                                    if !isPhoneNumberValid{
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(lineWidth: 1)
                                            .foregroundColor(.red.opacity(0.3))
                                        
                                    }
                                }
                                .padding(.leading)
                                .padding(.trailing)
                                
                            
                            
                        }
                        //                            formulaireInt(textfeild: "SIRET", age:$siret)
                    }
                    
                    VStack(alignment: .leading){
                        Text("Email")
                            .bold()
                            .foregroundColor(Color("DeepBlue"))
                            .padding(.leading)
                        
                        TextField(" ", text: $email)
//                            .frame(width: 220)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .overlay{
                                if !isEmailValid{
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.red.opacity(0.3))
                                    
                                }
                            }
                            .padding(.leading)
                            .padding(.trailing)
                           
                    }
                    
//                    formulaireString(textfeild: "Mot de passe", nom: $mdp)
                    
                    VStack(alignment: .leading){
                        
                        Text("Mot de passe")
                            .bold()
                            .foregroundColor(Color("DeepBlue"))
                            .padding(.leading)
                       
                        TextField("", text: $mdp)
//                            .frame(width: 220)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .overlay{
                                if !isTextValid {
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(lineWidth: 1)
                                        .foregroundColor(.red.opacity(0.3))
                                    
                                }
                            }
                            .padding(.leading)
                            .padding(.trailing)
                            
                            
                        
                    }
                    
                    
                    
                    HStack {
                        Spacer()
                        NavigationLink( isActive: $idAdd){
                            
                            if isPro == true {
                                ProfilPView(email: email, mdp: mdp, profileVM: profileVM)
                                
                            }else{
                                ProfilUView(profileVM: profileVM, email: email, mdp: mdp)
                                
                            }
                        }label: {
                                                
                            Button {
                                
                                validateFields()
                                
                                if isFormValid() {
                                    
                                    profileVM.addProfilP(isPro: isPro, newImage: image.pngData() ?? Data(), newPrenom : prenom, newNom : nom, newDate : date, newGenre : genre.rawValue , newDescription : description, newtelephone: Int(telephone) ?? 0, newSiret: siret , newAdresse : adresse, newEmail : email, newMdp : mdp)
                                    
                                    idAdd = true
                                    
                                }
                                
                                
                            } label: {
                                Text("Se connecter")
                                    .frame(width: 255, height: 30)
                                    .bold()
                            }.buttonStyle(.borderedProminent)
                                .tint(Color("Primaire"))
                                .padding(.top)
                            
                    }
                    Spacer()
                        
                    }
                    
                }
            }
            
        }
    }
            
           
        
        .sheet(isPresented: $showPhotoSheet) {
            ImagePicker(sourceType: .photoLibrary, selectedImage: self.$image)
        }
        
    }
        

    func validateFields() {
        isTextValid = isValidText(nom, prenom, genre.rawValue, description, adresse, mdp)
         isEmailValid = isValidEmail(email)
         isPhoneNumberValid = isValidPhoneNumber(telephone)
     }

     func isValidEmail(_ email: String) -> Bool {
         return email.contains("@") && email.contains(".")
     }
    
    func isValidText(_ nom: String, _ prenom: String, _ genre: String, _ description: String, _ adresse: String, _ mdp: String) -> Bool {
        
        return !nom.isEmpty && !prenom.isEmpty && !genre.isEmpty && !description.isEmpty && !adresse.isEmpty && !mdp.isEmpty        
    }

     func isValidPhoneNumber(_ phoneNumber: String) -> Bool {
         // Vérifiez si le numéro de téléphone contient uniquement des chiffres et a une longueur de 10 chiffres
         let phoneNumberCharacterSet = CharacterSet(charactersIn: "0123456789")
         let filtered = phoneNumber.unicodeScalars.filter { phoneNumberCharacterSet.contains($0) }
         return phoneNumber.count == 10 && filtered.count == phoneNumber.count
     }

     func isFormValid() -> Bool {
         return isTextValid && isEmailValid && isPhoneNumberValid
     }
    
        
    
}

struct InscriptionDetailsPView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            InscriptionDetailsView( profileVM: ListesDesProfiles(), isPro: false)
        }
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
                    .frame(width: 220)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .background(isTextValid ? Color("Neutre")  : Color.red.opacity(0.3)) //VOIR AVEC KELIAN
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
                    .frame(width: 220)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .background(isTextValid ? Color("Neutre")  : Color.red.opacity(0.3))
                    .padding()
                    
            }
        }
    }
