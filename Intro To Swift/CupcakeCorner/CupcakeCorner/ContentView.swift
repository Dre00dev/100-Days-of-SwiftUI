//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Andres Pulgarin on 4/21/23.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/bad.png"),scale: 3){ phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil{
                Text("There was an error loading the image")
            } else {
                ProgressView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
