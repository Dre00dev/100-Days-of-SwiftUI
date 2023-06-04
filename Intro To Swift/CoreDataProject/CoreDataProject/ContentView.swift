//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Andres Pulgarin on 5/1/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var countries: FetchedResults<Country>
    var body: some View {
        VStack{
            List{
                ForEach(countries, id: \.self){ country in
                    Section(country.wrappedFullName) {
                        ForEach(country.candytArray, id: \.self) { candy in
                            Text(candy.wrappedName)
                        }
                    }
                }
            }
            Button("Add Examples") {
                let candy1 = "Mars"
                candy1.origin = Country(context:moc)
                candy1.origin?.shortName = "UK"
                candy1.origin?.fullName = "United Kingdom"
                let candy2 = "KitKat"
                candy2.origin = Country(context:moc)
                candy2.origin?.shortName = "UK"
                candy2.origin?.fullName = "United Kingdom"
                let candy3 = "Twix"
                candy3.origin = Country(context:moc)
                candy3.origin?.shortName = "UK"
                candy3.origin?.fullName = "United Kingdom"
                let candy4 = "Toblerone"
                candy4.origin = Country(context:moc)
                candy4.origin?.shortName = "CH"
                candy4.origin?.fullName = "Switzerland"
                
                try? moc.save()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

