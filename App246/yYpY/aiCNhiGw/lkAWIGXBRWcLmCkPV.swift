//
//  qegcINwKKF.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
//

import SwiftUI
import CoreData

final class qegcINwKKF: ObservableObject {
    
    @Published var XLrBbcQGwo: Bool = false
    @Published var ieOmsoSrHA: ProjectsModel?
    
    @Published var hKRqjuEoaO: String = ""
    
    @Published var name: String = ""
    @Published var tqGOorDdPh: String = ""
    @Published var gROOdOOYPv: String = ""
    
    @Published var qFqatObCAP: Date = Date()
    @Published var tBEzOWeSZP: Date = Date()
    
    @Published var IyowIEriNE: [ProjectsModel] = []
    
    func ODVRKgfzgp() {
        
        CoreDataStack.shared.modelName = "ProjectsModel"
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<ProjectsModel>(entityName: "ProjectsModel")

        do {
            
            let branch = try context.fetch(fetchRequest)
            
            self.IyowIEriNE = branch
            
        } catch let error as NSError {
            
            print("Error fetching persons: \(error), \(error.userInfo)")
            
            self.IyowIEriNE = []
        }
    }
    
    func XmkUBjhvBH(completion: @escaping () -> (Void)) {
        
        CoreDataStack.shared.modelName = "ProjectsModel"
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let trans = NSEntityDescription.insertNewObject(forEntityName: "ProjectsModel", into: context) as! ProjectsModel
        
        trans.name = name
        trans.tqGOorDdPh = tqGOorDdPh
        trans.gROOdOOYPv = Int16(gROOdOOYPv) ?? 0
        trans.qFqatObCAP = qFqatObCAP
        trans.tBEzOWeSZP = tBEzOWeSZP
        
        CoreDataStack.shared.TsuSErYGhO()
        
        completion()
    }
}
