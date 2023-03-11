//
//  ContentView.swift
//  BetterRest
//
//  Created by Andres Pulgarin on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
    
    func trivialExample(){
        let components = Calendar.current.dateComponents([.hour, .minute], from: Date.now)
        let hour = components.hour ?? 0
        let minutes = components.minute ?? 0  //optionals so use nil coalescing just in case
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
