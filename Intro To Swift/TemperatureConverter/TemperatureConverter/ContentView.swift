//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Andres Pulgarin on 3/4/23.
//

/*
TempConverter

A segmented control for celsius, kelvin, or fahrenheit input unit.
A second segmented control for celsius, kelvin, or fahrenheit, for the output unit.
A text field where users enter a number.
A text view showing the result of the conversion.
 */
import SwiftUI

struct ContentView: View {
    
    
    @State private var temp = 0.0
    @State private var selectedScale = "Fahrenheit"
    @State private var selectedConvert = "Celsius"
    @FocusState private var tempIsFocused: Bool
    let scale = ["Fahrenheit", "Celsius", "Kelvin"]
    var conversion: Double {
        let fToC = (temp - 32) * 5/9
        let fToK = fToC + 273.15
        let cToF = (temp * 9/5) + 32
        let cToK = temp + 273.15
        let kToC = temp - 273.15
        let kToF = (kToC * 9/5) + 32
        
        if selectedScale == "Fahrenheit" && selectedConvert == "Celsius"{
            return fToC
        }else if selectedScale == "Fahrenheit" && selectedConvert == "Kelvin"{
            return fToK
        }else if selectedScale == "Celsius" && selectedConvert == "Fahrenheit"{
            return cToF
        }else if selectedScale == "Celsius" && selectedConvert == "Kelvin"{
            return cToK
        }else if selectedScale == "Kelvin" && selectedConvert == "Fahrenheit"{
            return kToF
        }else if selectedScale == "Kelvin" && selectedConvert == "Celsius"{
            return kToC
        }else if selectedScale == selectedConvert{
            return temp
        }else{
            return 0.0
        }
    }
    var body: some View {
        NavigationView{
            Form{
                Section{
                    Picker("Enter Temperature", selection: $selectedScale){
                        ForEach(scale, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    TextField("Temperature", value: $temp, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($tempIsFocused)
                }
                Section{
                    Picker("Enter Temperature", selection: $selectedConvert){
                        ForEach(scale, id: \.self){
                            Text($0)
                        }
                    }
                    .pickerStyle(.segmented)
                    Text(conversion, format: .number)
                }
                Section{
                    
                }
            }
            .navigationTitle("TempConverter")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard){
                    Spacer()
                    
                    Button("Done"){
                        tempIsFocused = false
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
