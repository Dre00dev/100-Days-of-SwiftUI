//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Andres Pulgarin on 3/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = ""
    @State private var winLose = Bool.random()
    @State private var choices = ["rock", "paper", "scissors"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var scoreCount = 0
    
    
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.black, .gray], startPoint: .bottom, endPoint: .top)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Rock Paper Scissors")
                    .font(.largeTitle.weight(.bold))
                
                Spacer()
                VStack(spacing:15){
                    Text("Tap photo and try to")
                        .foregroundColor(.black)
                        .font(.subheadline.weight(.heavy))
                    
                    
                    Text(winLose ? "Win" : "Lose")
                        .foregroundColor(.black)
                        .font(.largeTitle.weight(.semibold))
                    Image(choices[correctAnswer])
                        .resizable()
                        .scaledToFit()
                        .frame(width: 180, height: 180)
                    HStack{
                        ForEach(0..<3){number in
                            Button{
                                choiceIsTapped(number)
                            } label: {
                                Image(choices[number])
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical,20)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                Spacer()
                Text("Score Count: \(scoreCount)")
                    .foregroundColor(.white)
                    .font(.largeTitle.weight(.semibold))
                    .shadow(radius: 3)
                Spacer()
            }
        }
    }
    
    func askQuestion(){
        choices.shuffle()
        correctAnswer = Int.random(in: 0..<2)
        winLose = Bool.random()
    }
    func choiceIsTapped(_ number: Int){
        if winLose == true {
            if choices[correctAnswer] == "rock" && choices[number] == "paper" ||
            choices[correctAnswer] == "paper" && choices[number] == "scissors" ||
            choices[correctAnswer] == "scissors" && choices[number] == "rock" {
                scoreCount += 1
                askQuestion()
            }
        }else if winLose == false {
            if choices[correctAnswer] == "rock" && choices[number] == "scissors" ||
                choices[correctAnswer] == "paper" && choices[number] == "rock" ||
                choices[correctAnswer] == "scissors" && choices[number] == "paper"{
                scoreCount += 1
                askQuestion()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
