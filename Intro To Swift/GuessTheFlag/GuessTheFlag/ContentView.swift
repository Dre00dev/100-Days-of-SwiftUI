//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Andres Pulgarin on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var scoreCount = 0
    
    var body: some View {
        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red:0.76, green: 0.15,blue: 0.26), location: 0.3)
            ],center: .top,startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            VStack{//including white frame and more
                Spacer()
                Text("Guess The Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                VStack(spacing: 15){  //refering to maps and text inside white frame
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach(0..<3){ number in
                        Button{
                            flagTapped(number)
                        }label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Your Score: \(scoreCount)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestiion)
        }message: {
            Text("your score is \(scoreCount)")
        }
    }
    func askQuestiion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    func flagTapped(_ number: Int){
        if number == correctAnswer{
            scoreTitle = "Correct"
            scoreCount+=1
        }else{
            scoreTitle = "Wrong"
            
        }
        showingScore = true
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
