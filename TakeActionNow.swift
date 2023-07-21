//
//  TakeActionNow.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-20.
//

import SwiftUI

struct TakeActionNow: View {
    @State private var task = ""
    @State private var tasksCompleted = ""
    private let scoreManager = ScoreManager()
    @State private var currentScore = 0
    
    var body: some View {
        ZStack {
            RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            VStack {
                Text("Take Action Now!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                Text("Click on the link below to find some actions for you to complete to reduce your carbon footprint!")
                    .multilineTextAlignment(.center)
                    .padding([.leading, .bottom, .trailing], 20.0)
                
                Link(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=URL@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/) {
                    Text("🌳")
                        .font(.largeTitle)
                        .foregroundColor(Color(hue: 0.09, saturation: 0.916, brightness: 0.657))
                        .padding(.bottom, 40.0)
                }
                
                
                
                Text("Submit any tasks completed below to earn points. Check out your daily score on the scoreboard. If it is a daily challenge, state challenge.")
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 70.0)
                
                TextField("Enter your task...", text: $task)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                Button("Submit") {
                    tasksCompleted = "Your Task Has Been Entered: \(task)"
                    if task == "Challenge"{
                        currentScore+=200
                        scoreManager.saveScore(currentScore)
                    } else if tasksCompleted != "" {
                        currentScore+=100
                        scoreManager.saveScore(currentScore)
                    }
                    
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                
                
                Text(tasksCompleted)
                Spacer()
                
                Text("Score: \(currentScore)")
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Button("Done for the day!") {
                    currentScore = 0
                }
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                
            } .padding()
                .onAppear {
                    currentScore = scoreManager.loadScore()
                }
            
        }
    }
}
    
    struct TakeActionNow_Previews: PreviewProvider {
        static var previews: some View {
            TakeActionNow()
        }
    }

