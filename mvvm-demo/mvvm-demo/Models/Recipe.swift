//
//  Recipe.swift
//  mvvm-demo
//
//  Created by Steve Chan on 13/10/2022.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name = ""
    var cuisine = ""
    
}
