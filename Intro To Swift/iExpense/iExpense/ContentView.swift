//
//  ContentView.swift
//  iExpense
//
//  Created by Andres Pulgarin on 3/27/23.
//

import SwiftUI

struct User: Codable{
    var firstName: String
    var lastName: String
    
}



struct ContentView: View {
    //@AppStorage("tapCount") private var tapCount = 0
    @State private var user = User(firstName: "Taylor", lastName: "Swift")
    var body: some View {
        VStack {
            Button("Save User"){
                let encoder = JSONEncoder()
                
                if let data = try? encoder.encode(user) {
                    UserDefaults.standard.set(data, forKey: "UserData")
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
