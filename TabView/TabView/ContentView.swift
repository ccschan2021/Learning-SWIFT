//
//  ContentView.swift
//  TabView
//
//  Created by Steve Chan on 24/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 2
    
    var body: some View {
        
        // two way binding by $ sign
        TabView (selection: $tabIndex) {
            Text("This is tab 1")
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("Tab 1")
                    }
                }
                .tag(1)
            VStack {
                Text("This is tab 2")
                Text("This is some more text")
            }
            .tabItem {
                VStack {
                    Image(systemName: "star")
                    Text("Tab2")
                }
            }
            .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
