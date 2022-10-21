//
//  ContentView.swift
//  ForEach Demo
//
//  Created by Steve Chan on 18/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    var array = ["Pizza", "Burrito", "Sushi"]
    
    var body: some View {
    
        /*
        ScrollView {
            ForEach (array, id: \.self) { r in
                
                // This code will be repeated for each element in the array
                Text(r)
            }
        }
        */
        
        ScrollView {
            ForEach (0...array.count-1, id: \.self) { index in
                Text(array[index])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
