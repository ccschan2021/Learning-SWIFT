//
//  ContentView.swift
//  List Demo
//
//  Created by Steve Chan on 7/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    var array = ["Element 1", "Element 2", "Element 3", "Element 4", "Element 5"]
    var body: some View {
       
        //List {
        //    Text(array[0])
        //    Text(array[1])
        //    Text(array[2])
        //}
        
        NavigationView {
            
            List(array, id: \.self) { arrayElement in
                
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        Text(arrayElement)
                    })
            }.navigationBarTitle(Text("My List"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
