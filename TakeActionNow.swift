//
//  TakeActionNow.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-20.
//

import SwiftUI

struct TakeActionNow: View {
    //set variables for actions taken and current score
    @State private var task = ""
    @State private var tasksCompleted = ""
    private let scoreManager = ScoreManager()
    @State private var currentScore = 0
    
    var body: some View {
        ZStack {
            //background gradient code
            RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            VStack {
                Text("Take Action Now!")
                    .font(Font.custom("SecularOne-Regular", size:36))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))
                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                Text("Click on the tree below to find some actions for you to complete to reduce your carbon footprint!")
                    .multilineTextAlignment(.center)
                    .padding([.leading, .bottom, .trailing], 20.0)
                //an emoji which links to a website when clicked
                Link(destination: URL(string:"https://www.conservation.org/quizzes/carbon-footprint-quiz")!) {
                    Text("🌳")
                        .font(.largeTitle)
                        .foregroundColor(Color(hue: 0.09, saturation: 0.916, brightness: 0.657))
                        .padding(.bottom, 40.0)
                }
                
                
                Text("Submit any tasks completed below to earn points. If it is a daily challenge, state challenge.")
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 70.0)
                //field to submit any tasks completed to earn points
                TextField("Enter your task...", text: $task)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                Button("Submit") {
                    tasksCompleted = "Your Task Has Been Entered: \(task)"
                   //if a challenge is completed, the score will increase by 200
                    if task == "Challenge"{
                        currentScore+=200
                        //saves current score on app
                        scoreManager.saveScore(currentScore)
                    } else if tasksCompleted != "" {
                        //if another task is completed, the score will increase by 100
                        currentScore+=100
                        //saves current score on app
                        scoreManager.saveScore(currentScore)
                    }
                    
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.365, saturation: 0.38, brightness: 0.3))
                
                //displays the task entered                 Text(tasksCompleted)
                Spacer()
                //displays the current score
                Text("Score: \(currentScore)")
                    .font(.title2)
                    .fontWeight(.heavy)
                //resets score to zero
                Button("Done for the day!") {
                    currentScore = 0
                    scoreManager.saveScore(currentScore)
                }
                .font(.title)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.365, saturation: 0.38, brightness: 0.3))
                
            } .padding()
            //function that displays the current score
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

