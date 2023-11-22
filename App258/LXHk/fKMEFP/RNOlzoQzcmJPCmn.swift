//
//  jcHoGHxagz.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI
import CoreData

final class jcHoGHxagz: ObservableObject {
    
    @Published var eUfbpLzwxU: [QuotesModel] = []
    
    @Published var name: String = ""
    @Published var RKnSKwwvnL: String = ""
    @Published var BmDZpPhLqF: String = ""
    
    @Published var khwXepHpBn: Bool = false
    @Published var FIuggwPaVK: Bool = false
    
    func fnhFWdyQUT() {
        
        CoreDataStack.shared.modelName = "QuotesModel"
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<QuotesModel>(entityName: "QuotesModel")

        do {
            
            let branch = try context.fetch(fetchRequest)
            
            self.eUfbpLzwxU = branch
            
        } catch let error as NSError {
            
            print("Error fetching persons: \(error), \(error.userInfo)")
            
            self.eUfbpLzwxU = []
        }
    }
    
    func txIsmPrKSf(completion: @escaping () -> (Void)) {
        
        CoreDataStack.shared.modelName = "QuotesModel"
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let trans = NSEntityDescription.insertNewObject(forEntityName: "QuotesModel", into: context) as! QuotesModel
        
        trans.name = name
        trans.RKnSKwwvnL = RKnSKwwvnL
        trans.BmDZpPhLqF = BmDZpPhLqF
        
        CoreDataStack.shared.RYamXfezmX()
        
        completion()
    }
}
