//
//  ContentView.swift
//  MultiplicationGame
//
//  Created by Andres Pulgarin on 3/27/23.
//

import SwiftUI

struct Question {
    @State private var num1 = Int.random(in: 1..<12);
    @State private var num2 = Int.random(in: 1..<12);
    @State private var text = "\(num1) x \(num2) = ?";
    
}
struct ContentView: View {
    var body: some View {
        VStack {
            Stepper{
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
