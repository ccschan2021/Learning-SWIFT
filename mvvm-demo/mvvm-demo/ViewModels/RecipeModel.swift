//
//  RecipeModel.swift
//  mvvm-demo
//
//  Created by Steve Chan on 13/10/2022.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // create some dummy recipe data
        //var recipe = Recipe()
        //recipe.name = "Spaghetti"
        //recipe.cuisine = "Italian"
        //recipes.append(Recipe(name: "Spaghetti", cuisine: "Italian"))
        //recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
        
        // Get the path to the json file within the app bundle
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            
            // create a url object
            let url = URL(fileURLWithPath: path)
            
            // Error handling
            do {
                // Put the code that potentially throws an error
                
                // create a data object with the data at the url
                let data = try Data(contentsOf: url)
                
                // Parse the data
                let decoder = JSONDecoder()
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    // Set unique IDs for each instance
                    for r in recipeData {
                        // Set a unique ID for each recipe in the recipeData array
                        r.id = UUID()
                    }
                    
                    // Assign the data to the published property
                    self.recipes = recipeData
                }
                catch {
                    // Couldn't decode json
                    print("Error1")
                    print(error)
                }
            }
            catch {
                // Execution will come here if an error is thrown
                // Handle the error
                print("Error2")
                print(error)
            }
            
        }
    }
    
    func addRecipe() {
        
        //recipes.append(Recipe(name: "Burger", cuisine: "American"))
    }
}
