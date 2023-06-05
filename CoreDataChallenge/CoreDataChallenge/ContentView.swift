//
//  ContentView.swift
//  CoreDataChallenge
//
//  Created by Andres Pulgarin on 6/4/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var users: FetchedResults<CachedUser>
    @State private var loadedUsers = [User]()
    var body: some View {
        NavigationView{
            List(loadedUsers){ user in
                Text("\(user.name)")
            }
        }
        .task{
            await loadUserData()
        }
    }
    func loadUserData() async{
        if loadedUsers.isEmpty{
            guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else{
                print("Invalid URL")
                return
            }
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                if let decodedResponse = try? decoder.decode([User].self, from: data) {
                    await MainActor.run{
                        loadedUsers = decodedResponse
                        writeDataToCoreData(users: loadedUsers)
                    }
                }
            } catch {
                print("Invalid data")
            }
            
        }
    }
    func writeDataToCoreData(users: [User]) {
        for user in users {
            let mocUser = CachedUser(context: moc)
            mocUser.id = user.id
            mocUser.isActive = user.isActive
            mocUser.name = user.name
            mocUser.age = Int16(user.age)
            mocUser.company = user.company
            
            for friend in user.friends {
                let newFriend = CachedFriend(context: moc)
                newFriend.id = friend.id
                newFriend.name = friend.name
                
                mocUser.addToFriends(newFriend)
            }
        }
        
        if moc.hasChanges {
            try? moc.save()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
