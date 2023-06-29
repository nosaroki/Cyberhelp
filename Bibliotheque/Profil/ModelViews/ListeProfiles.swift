//
//  ListeProfilesU.swift
//  CyberHelp
//
//  Created by Apprenant 79 on 24/06/2023.
//

import Foundation
import SwiftUI
import CoreData

//class ListesDesProfilesU: ObservableObject {
//
//    let container: NSPersistentContainer
//
//    @Published var ListeProfilesU : [ProfilU] = []
//
//    init() {
//
//        container = NSPersistentContainer(name: "dataProfilU") // le nom du container doit être le même que celui créé!!
//        container.loadPersistentStores { (description, error) in
//            if let error = error {
//                print("oops there is an error \(error)")
//            } else {
//                print("ok cool")
//            }
//
//            // Si cette fonction est appelée dans le init: on récupère les données à chaque création d'objets de type UsersViewModel
//            self.fetchUsers()
//
//        }
//
//    }
//
//    func fetchUsers() {
//        let request = NSFetchRequest<ProfilU>(entityName: "ProfilU") // doit matcher le nom de votre entité dans le container!
//
//        do {
//            ListeProfilesU = try container.viewContext.fetch(request)
//        } catch let error {
//            print("Error fetching \(error)")
//        }
//
//    }
//
//
//    func addProfil(newProfilPic : Data,  newPrenom : String, newNom : String, newAge : Int, newGenre : String , newDescription : String, newtelephone: Int, newAdresse : String, newEmail : String, newMdp : String) {
//
//        let newProfil = ProfilU(context: container.viewContext)
//
//        newProfil.profilPic = newProfilPic
//        newProfil.prenom = newPrenom
//        newProfil.nom = newNom
//        newProfil.age = Int16(newAge)
//        newProfil.genre = newGenre
//        newProfil.descriptionU = newDescription
//        newProfil.telephone = Int64(newtelephone)
//        newProfil.adresse = newAdresse
//        newProfil.email = newEmail
//        newProfil.mdp = newMdp
//
//        self.saveData()
//    }
//
//
//    func saveData() {
//        do {
//            try container.viewContext.save()
//            // après avoir sauvé on mets à jour la variable published users
//            self.fetchUsers()
//        } catch let error {
//            print("Error when saving the data \(error)")
//        }
//    }
//
//
//    func deleteProfil(indexSet: IndexSet) {
//        guard let index = indexSet.first else { return }
//        let entity = ListeProfilesU[index]
//        container.viewContext.delete(entity)
//        self.saveData()
//    }
//
//    func updateProfil(user : ProfilU, updatedName: String, updatedPhone: Int) {
//        // *** pas implémenté côté vu, l'idée:
//        user.nom = updatedName
//        user.telephone = Int64(updatedPhone)
//        self.saveData()
//    }
//
//}

class ListesDesProfilesP: ObservableObject {
    
    let containerP: NSPersistentContainer
    
    @Published var ListeProfilesP : [ProfilP] = []
    
    init() {
        
        containerP = NSPersistentContainer(name: "dataProfilU") // le nom du container doit être le même que celui créé!!
        containerP.loadPersistentStores { (description, error) in
            if let error = error {
                print("oops there is an error \(error)")
            } else {
                print("ok cool")
            }
            
            // Si cette fonction est appelée dans le init: on récupère les données à chaque création d'objets de type UsersViewModel
            self.fetchUsers()
            
        }
        
    }
    
    func fetchUsers() {
        let request = NSFetchRequest<ProfilP>(entityName: "ProfilP") // doit matcher le nom de votre entité dans le container!
        
        do {
            ListeProfilesP = try containerP.viewContext.fetch(request)
        } catch let error {
            print("Error fetching \(error)")
        }
        
    }
    
    
    func addProfilP(newImage: Data, newPrenom : String, newNom : String, newAge : Int, newGenre : String , newDescription : String, newtelephone: Int, newSiret : String, newAdresse : String, newEmail : String, newMdp : String) {

        let newProfilP = ProfilP(context: containerP.viewContext)

        newProfilP.profilPic = newImage
        newProfilP.prenom = newPrenom
        newProfilP.nom = newNom
        newProfilP.age = Int64(newAge)
        newProfilP.genre = newGenre
        newProfilP.descriptionU = newDescription
        newProfilP.telephone = Int64(newtelephone)
        newProfilP.siret = Int64(newSiret) ?? 0
        newProfilP.adresse = newAdresse
        newProfilP.email = newEmail
        newProfilP.mdp = newMdp

        self.saveData()
    }
    
    func saveData() {
        do {
            try containerP.viewContext.save()
            // après avoir sauvé on mets à jour la variable published users
            self.fetchUsers()
        } catch let error {
            print("Error when saving the data \(error)")
        }
    }
    

    func deleteProfil(indexSet: IndexSet) {
        guard let index = indexSet.first else { return }
        let entity = ListeProfilesP[index]
        containerP.viewContext.delete(entity)
        self.saveData()
    }
    
    func updateProfil(user : ProfilP,newImage: Data, newPrenom : String, newNom : String, newAge : Int, newGenre : String , newDescription : String, newtelephone: Int, newSiret : String, newAdresse : String, newEmail : String, newMdp : String) {
        
        // *** pas implémenté côté vu, l'idée:
        
        user.profilPic = newImage
        user.prenom = newPrenom
        user.nom = newNom
        user.age = Int64(newAge)
        user.genre = newGenre
        user.descriptionU = newDescription
        user.telephone = Int64(newtelephone)
        user.siret = Int64(newSiret) ?? 0
        user.adresse = newAdresse
        user.email = newEmail
        user.mdp = newMdp
        
        self.saveData()
    }
    
}

        
//
//    internal init(container: NSPersistentContainer, ListeProfilesU: <<error type>> = []) {
//        self.container = container
//        self.ListeProfilesU = ListeProfilesU
//    }
    
    
//    let container : NSPersistentContainer
//
//
//    init() {
//
//        container = NSPersistentContainer(name: "dataProfilU") // le nom du container doit être le même que celui créé!!
//        container.loadPersistentStores { (description, error) in
//            if let error = error {
//                print("oops there is an error \(error)")
//            } else {
//                print("ok cool")
//            }
//
            // Si cette fonction est appelée dans le init: on récupère les données à chaque création d'objets de type UsersViewModel
                // self.fetchUsers()
            
//        }
//
//    }
//
//    internal init(ListeProfilesU: [ProfilUtilisateur] = []
    
//    [
//        ProfilUtilisateur(
//            profilPic: Image("PhotoU"),
//            prénom: "Isabelle",
//            nom: "Doudou",
//            age: 19,
//            genre: .femme,
//            description: """
//                            Hello, moi c’est Isabelle
//                            j’aime faire du sport et souvent victime d’attaque sur mon poids
//                            """,
//            telephone: 0678564532,
//            adresse: Adresse(codePostal: "75011", nomCommune: "Paris"),
//            email: "Isabelle@gmail.com",
//            mdp: "0123AZERTY")
//
//    ]) {
//        self.ListeProfilesU = ListeProfilesU
//    }
    
    
//    @Published var ListeProfilesU: [ProfilU]
    
//    [
//        ProfilUtilisateur(
//            profilPic: Image("PhotoU"),
//            prénom: "Isabelle",
//            nom: "Doudou",
//            age: 19,
//            genre: .femme,
//            description: """
//                              Hello, moi c’est Isabelle
//                              j’aime faire du sport et souvent victime d’attaque sur mon poids
//                              """,
//            telephone: 0678564532,
//            adresse: Adresse(codePostal: "75011", nomCommune: "Paris"),
//            email: "Isabelle@gmail.com",
//            mdp: "0123AZERTY")
//
//    ]
   
    
//}













