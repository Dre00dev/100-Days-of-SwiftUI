//
//  ContentView.swift
//  CoreDataChallenge
//
//  Created by Andres Pulgarin on 6/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var users = [User]()
    var body: some View {
        NavigationView{
            List(users){ user in
                Text("\(user.name)")
            }
            .onAppear(perform: loadUserData)
        }
    }
    func loadUserData() {
        if users.isEmpty{
            guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else{
                print("Invalid URL")
                return
            }
            
            let request = URLRequest(url: url)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let userData = data
                else {
                    print("No data in response \(error?.localizedDescription ?? "Unknown Error")")
                    return
                }
                let decoder = JSONDecoder()
                
                decoder.dateDecodingStrategy = .iso8601
                
                do{
                    users = try decoder.decode([User].self, from: userData)
                    return
                } catch {
                    print("Decoding Failed: \(error)")
                }
                print("Fetch Failed:  \(error?.localizedDescription ?? "Unknown Error")")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
