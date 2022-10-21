//
//  ContentView.swift
//  uiTest
//
//  Created by Steve Chan on 27/9/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "phloe1"
    @State private var cpuCard = "phloe2"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        /*VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.white)
            Text("Hello, world!")
        }
        .padding().background(Color.red)*/
        /*VStack() {
            Spacer()
            Image("phloe").resizable().aspectRatio(contentMode: .fit)
            Spacer()
            HStack(spacing: 20.0) {
                Text("Hello!")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(Color.purple.blur(radius: 10.0))
                Text("World!")
            }
            Spacer()*/
        ZStack {
            Image("phloe").resizable().aspectRatio(contentMode: .fill).ignoresSafeArea()
            VStack {
                Spacer()
                Image("phloe")
                Text("The match ended in a tie 這場比賽以平局結束")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    let playerRand = Int.random(in: 1...9)
                    let cpuRand = Int.random(in: 1...9)
                    
                    playerCard = "phloe" + String(playerRand)
                    cpuCard = "phloe" + String(cpuRand)
                    if playerCard > cpuCard {
                        playerScore += 1
                    }
                    else if playerCard != cpuCard {
                        cpuScore += 1
                    }
                }, label: {
                    Image("phloe3")
                })
                Spacer()
                HStack {
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
