//
//  ContentView.swift
//  MoonShot
//
//  Created by Andres Pulgarin on 3/28/23.
//

import SwiftUI


struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),

    ]
    var body: some View {
    
        ScrollView(.horizontal){
            LazyHGrid(rows: layout){
                ForEach(0..<100){
                    Text("Item \($0)")
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
