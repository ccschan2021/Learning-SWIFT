//
//  ContentView.swift
//  JP
//
//  Created by Steve Chan on 18/10/2022.
//

import SwiftUI

struct ContentView: View {
    var a1 = ["あ", "い", "う", "え", "お"]
    var b1 = ["か", "き", "く", "け", "こ"]
    var c1 = ["さ", "し", "す", "せ", "そ"]
    var d1 = ["た", "ち", "つ", "て", "と"]
    var e1 = ["な", "に", "ぬ", "ね", "の"]
    var f1 = ["は", "ひ", "ふ", "へ", "ほ"]
    var g1 = ["ま", "み", "む", "め", "も"]
    var h1 = ["や", "＿", "ゆ", "＿", "よ"]
    var i1 = ["ら", "り", "る", "れ", "ろ"]
    var j1 = ["わ", "＿", "＿", "＿", "を"]
    
    var a2 = ["ア", "イ", "ウ", "エ", "オ"]
    var b2 = ["カ", "キ", "ク", "ケ", "コ"]
    var c2 = ["サ", "シ", "ス", "セ", "ソ"]
    var d2 = ["タ", "チ", "ツ", "テ", "ト"]
    var e2 = ["ナ", "ニ", "ヌ", "ネ", "ノ"]
    var f2 = ["ハ", "ヒ", "フ", "ヘ", "ホ"]
    var g2 = ["マ", "ミ", "ム", "メ", "モ"]
    var h2 = ["ヤ", "＿", "ユ", "＿", "ヨ"]
    var i2 = ["ラ", "リ", "ル", "レ", "ロ"]
    var j2 = ["ワ", "＿", "＿", "＿", "ヲ"]
    
    @State var a = ["あ", "い", "う", "え", "お"]
    @State var b = ["か", "き", "く", "け", "こ"]
    @State var c = ["さ", "し", "す", "せ", "そ"]
    @State var d = ["た", "ち", "つ", "て", "と"]
    @State var e = ["な", "に", "ぬ", "ね", "の"]
    @State var f = ["は", "ひ", "ふ", "へ", "ほ"]
    @State var g = ["ま", "み", "む", "め", "も"]
    @State var h = ["や", "＿", "ゆ", "＿", "よ"]
    @State var i = ["ら", "り", "る", "れ", "ろ"]
    @State var j = ["わ", "＿", "＿", "＿", "を"]
        
    var body: some View {
        List {
            Text("Element1")
            Text("Element2")
        }
        VStack {
            HStack {
                Button(action: {
                    a = a1
                    b = b1
                    c = c1
                    d = d1
                    e = e1
                    f = f1
                    g = g1
                    h = h1
                    i = i1
                    j = j1
                }, label: {
                    Text("ひらがな").foregroundColor(Color.black)
                    .font(.system(size: 12))
                })
                Button(action: {
                    a = a2
                    b = b2
                    c = c2
                    d = d2
                    e = e2
                    f = f2
                    g = g2
                    h = h2
                    i = i2
                    j = j2
                }, label: {
                    Text("カタカナ").foregroundColor(Color.black)
                    .font(.system(size: 12))
                })
            }.buttonStyle(.bordered)
            HStack {
                // tenth Row
                VStack {
                    ForEach (j, id: \.self) { r in
                    
                        Button(action: {
                        }, label: {
                            Text(r).foregroundColor(Color.black)
                            .font(.system(size: 12))
                        })
                    }
                }.buttonStyle(.bordered)
                // Nineth Row
                VStack {
                    ForEach (i, id: \.self) { r in
                    
                        Button(action: {
                        }, label: {
                            Text(r).foregroundColor(Color.black)
                            .font(.system(size: 12))
                        })
                    }
                }.buttonStyle(.bordered)
                // Eighth Row
                VStack {
                    ForEach (h, id: \.self) { r in
                    
                        Button(action: {
                        }, label: {
                            Text(r).foregroundColor(Color.black)
                            .font(.system(size: 12))
                        })
                    }
                }.buttonStyle(.bordered)
                // Seventh Row
                VStack {
                    ForEach (g, id: \.self) { r in
                    
                        Button(action: {
                        }, label: {
                            Text(r).foregroundColor(Color.black)
                            .font(.system(size: 12))
                        })
                    }
                }.buttonStyle(.bordered)
                // Sixth Row
                VStack {
                    ForEach (f, id: \.self) { r in
                    
                        Button(action: {
                        }, label: {
                            Text(r).foregroundColor(Color.black)
                            .font(.system(size: 12))
                        })
                    }
                }.buttonStyle(.bordered)
                // Fifth Row
                VStack {
                    ForEach (e, id: \.self) { r in
                    
                        Button(action: {
                        }, label: {
                            Text(r).foregroundColor(Color.black)
                            .font(.system(size: 12))
                        })
                    }
                }.buttonStyle(.bordered)
                // Fourth Row
                VStack {
                    ForEach (d, id: \.self) { r in
                    
                        Button(action: {
                        }, label: {
                            Text(r).foregroundColor(Color.black)
                            .font(.system(size: 12))
                        })
                    }
                }.buttonStyle(.bordered)
                // Third Row
                VStack {
                    ForEach (c, id: \.self) { r in
                    
                        Button(action: {
                        }, label: {
                            Text(r).foregroundColor(Color.black)
                            .font(.system(size: 12))
                        })
                    }
                }.buttonStyle(.bordered)
                // Second Row
                VStack {
                    ForEach (b, id: \.self) { r in
                    
                        Button(action: {
                        }, label: {
                            Text(r).foregroundColor(Color.black)
                            .font(.system(size: 12))
                        })
                    }
                }.buttonStyle(.bordered)
                // First Row
                VStack {
                    ForEach (a, id: \.self) { r in
                    
                        Button(action: {
                        }, label: {
                            Text(r).foregroundColor(Color.black)
                            .font(.system(size: 12))
                        })
                    }
                }.buttonStyle(.bordered)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
