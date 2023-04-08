//
//  ContentView.swift
//  BookWorm
//
//  Created by Andres Pulgarin on 4/25/23.
//

import SwiftUI



struct ContentView: View {
    @Environment (\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
    var body: some View {
        VStack{
            List(students) { student in
                Text(student.name ?? "Unknown")
                
            }
            Button("Add"){
                let firstNames = ["Ginny", "Harry", "Andres", "test", "ron"]
                let lastNames = ["Granger", "Potter", "Weasley"]
                
                let chosenFirstName = firstNames.randomElement()!
                let chosenLastName = lastNames.randomElement()!
                
                let student = Student(context: moc)
                student.id = UUID()
                student.name = "\(chosenFirstName) \(chosenLastName)"
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
