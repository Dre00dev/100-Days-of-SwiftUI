//
//  ContentView.swift
//  WordScramble
//
//  Created by Andres Pulgarin on 3/14/23.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Luke ", "test"]
    var body: some View {
        List{
            Section("Section 1"){
                Text("Static")
                Text("2w22")
            }
            Section("Section 2"){
                ForEach(people, id: \.self){
                    Text("This is: \($0)")
                }
            }
            Section("Section 3")
            {
                Text("Static also")
            }

        }
       .listStyle(.grouped)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//Form is for user input
//List is for outputs
