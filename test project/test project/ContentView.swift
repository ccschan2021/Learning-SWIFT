//
//  ContentView.swift
//  test project
//
//  Created by Steve Chan on 29/9/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()*/
        
        VStack {
            // Button instance with closure
            Button("Click Me", action: {
                print("Hello World")
            })
            
            //Button instance with trailing closure
            Button("Click Me") {
                print("Hello World")
            }
            //Button instance with label view
            Button(action: {
                print("Hello World")
            }, label: {
                HStack {
                    Image(systemName: "key")
                    Text("Edit")
                }
            })

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
