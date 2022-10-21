//
//  ContentView.swift
//  Random
//
//  Created by Steve Chan on 19/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //repeat {
            let rand = [Int]()
            rand[0] = Int.random(in: 1...35)
            rand[1] = Int.random(in: 1...35)
            rand[2] = Int.random(in: 1...35)
            rand[3] = Int.random(in: 1...35)
            rand[4] = Int.random(in: 1...35)
            rand[5] = Int.random(in: 1...35)
            rand[6] = Int.random(in: 1...35)
            
        VStack{
            Text(String(rand[0]))
            Text(String(rand[1]))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
