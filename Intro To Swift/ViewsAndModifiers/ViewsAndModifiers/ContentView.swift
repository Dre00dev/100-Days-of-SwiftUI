//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Andres Pulgarin on 3/8/23.
//

import SwiftUI

struct Title : ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .clipShape(Capsule())
    }
}



struct ContentView: View {
    
    @State private var useTitle = true
    let motto2 = Text("huh")
    let agents = ["Andres", "Jade" , "Andrea", "Jenny"]
    
    
    var body: some View {
        VStack{
            Text("First")
            motto2.modifier(Title())
            Text("Test")
                .modifier(Title())
            ForEach(agents, id: \.self){
                Text($0).modifier(Title())
            }
            
           
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
