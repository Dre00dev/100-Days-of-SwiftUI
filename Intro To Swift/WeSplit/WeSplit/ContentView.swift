//
//  ContentView.swift
//  WeSplit
//
//  Created by Andres Pulgarin on 3/3/23.
//

import SwiftUI

struct ContentView: View {
    let students = ["Andres", "Jade", "Luigi"]
    @State private var selectedStudent = "Andres"
    var body: some View {
        NavigationView{
            Form{
                Picker("Select your student", selection: $selectedStudent){
                    ForEach(students, id: \.self){
                        Text($0)
                    }
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
