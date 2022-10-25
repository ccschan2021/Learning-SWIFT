//
//  ContentView.swift
//  GeometryReader Demo
//
//  Created by Steve Chan on 24/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
    /*
        GeometryReader { geo in
                
            Rectangle()
                .frame(width: geo.size.width/4, height: geo.size.height/8, alignment: .center)
                .onTapGesture {
                    print("global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: . global).minY)")
                    print("local x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
                }
        }.ignoresSafeArea()
    */
        
        VStack {
            GeometryReader { geo in
                Rectangle()
                    .frame(width: geo.size.width/4, height: geo.size.height/8, alignment: .center)
                    .onTapGesture {
                        print("global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: . global).minY)")
                        print("local x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
                    }
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100, alignment: .center)
                    //.padding([.leading, . top], 30)
                    .offset(x: 30, y: 30)
            }.position(x: 400, y:300)  //positioning the centre"
            
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: geo.size.width/4, height: geo.size.height/8, alignment: .center)
                    .onTapGesture {
                        print("global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: . global).minY)")
                        print("local x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
                    }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
