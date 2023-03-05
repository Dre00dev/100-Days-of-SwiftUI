//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Andres Pulgarin on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        Button("Show Alert"){
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert){
            Button("Delete",role: .destructive){ }
            Button("Cancel",role: .cancel){ }
        } message: {
            Text("Please read this")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}