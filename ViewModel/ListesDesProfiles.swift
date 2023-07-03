//
//  ListeProfilesU.swift
//  CyberHelp
//
//  Created by Apprenant 79 on 24/06/2023.
//

import Foundation
import SwiftUI
import CoreData

class ListesDesProfiles: ObservableObject {
    
    let containerP: NSPersistentContainer
    
    @Published var ListeProfilesP : [ProfilEntity] = []
    
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
        let request = NSFetchRequest<ProfilEntity>(entityName: "ProfilEntity") // doit matcher le nom de votre entité dans le container!
        
        do {
            ListeProfilesP = try containerP.viewContext.fetch(request)
        } catch let error {
            print("Error fetching \(error)")
        }
        
    }
    
    
    func addProfilP(isPro : Bool, newImage: Data, newPrenom : String, newNom : String, newAge : Int, newGenre : String , newDescription : String, newtelephone: Int, newSiret : String, newAdresse : String, newEmail : String, newMdp : String) {

        let newProfil = ProfilEntity(context: containerP.viewContext)
        
        newProfil.isPro = isPro
        newProfil.profilPic = newImage
        newProfil.prenom = newPrenom
        newProfil.nom = newNom
        newProfil.age = Int64(newAge)
        newProfil.genre = newGenre
        newProfil.descriptionU = newDescription
        newProfil.telephone = Int64(newtelephone)
        newProfil.siret = Int64(newSiret) ?? 0
        newProfil.adresse = newAdresse
        newProfil.email = newEmail
        newProfil.mdp = newMdp

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
    
    func updateProfil(user : ProfilEntity, isPro : Bool ,newImage: Data, newPrenom : String, newNom : String, newAge : Int, newGenre : String , newDescription : String, newtelephone: Int, newSiret : String, newAdresse : String, newEmail : String, newMdp : String) {
        
        // *** pas implémenté côté vu, l'idée:
        
        user.isPro = isPro
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
