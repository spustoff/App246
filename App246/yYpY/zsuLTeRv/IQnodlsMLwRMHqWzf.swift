//
//  boXwaQAHDG.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI
import CoreData

final class boXwaQAHDG: ObservableObject {
    
    @Published var name: String = ""
    @Published var tqGOorDdPh: String = ""
    
    @Published var qFqatObCAP: Date = Date()
    @Published var tBEzOWeSZP: Date = Date()
    
    @Published var DPLmnkUppc: [MissionsModel] = []
    
    @AppStorage("completed_missions") var completed_missions: [String] = []
    
    func uOazmRTRfY() {
        
        CoreDataStack.shared.modelName = "MissionsModel"
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<MissionsModel>(entityName: "MissionsModel")

        do {
            
            let branch = try context.fetch(fetchRequest)
            
            self.DPLmnkUppc = branch
            
        } catch let error as NSError {
            
            print("Error fetching persons: \(error), \(error.userInfo)")
            
            self.DPLmnkUppc = []
        }
    }
    
    func gXQGahzkcw(completion: @escaping () -> (Void)) {
        
        CoreDataStack.shared.modelName = "MissionsModel"
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let trans = NSEntityDescription.insertNewObject(forEntityName: "MissionsModel", into: context) as! MissionsModel
        
        trans.name = name
        trans.tqGOorDdPh = tqGOorDdPh
        trans.qFqatObCAP = qFqatObCAP
        trans.tBEzOWeSZP = tBEzOWeSZP
        
        CoreDataStack.shared.TsuSErYGhO()
        
        completion()
    }
}
