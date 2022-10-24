//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Steve Chan on 18/10/2022.
//

import Foundation

class RecipeModel: ObservableObject {
 
    @Published var recipes = [Recipe]()
    
    init() {
        // Create an instance of data service and get the data
        
        self.recipes = DataService.getLocalData()
    }
}
