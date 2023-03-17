//
//  ContentView.swift
//  Animations
//
//  Created by Andres Pulgarin on 3/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap here"){
            withAnimation(.interpolatingSpring( stiffness: 5, damping: 1)){
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y:0, z: 1))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
