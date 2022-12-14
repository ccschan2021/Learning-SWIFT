//
//  ContentView.swift
//  Picker Demo
//
//  Created by Steve Chan on 27/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedIndex = 1
    
    var body: some View {
        
        VStack {
            Picker("Tap Me", selection: $selectedIndex) {
                Text("Option 1").tag(1)
                Text("Option 2").tag(2)
                Text("Option 3").tag(3)
            }
            //.pickerStyle(WheelPickerStyle())
            //.pickerStyle(MenuPickerStyle())
            .pickerStyle(SegmentedPickerStyle())
            Text("You've selected: \(selectedIndex)")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
