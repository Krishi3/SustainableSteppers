//
//  dailyChallenges.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-20.
//

import SwiftUI

struct dailyChallenges: View {
    @State private var i = 0
    @State private var challenge = ""
    @State private var dailyChallenges = ["Walk, bike, or use public transportation instead of driving a car to improve your well-being and reduce your carbon footprint.","Sharing a ride reduces the amount of carbon emitted into the atmosphere.", "Make a plan for what exactly you want to buy at the grocery store limits the waste outcome.","Choose to buy local and seasonal produce, reducing the carbon footprint associated with transporting food long distances.", "Plant a tree or participate in a local tree-planting initiative to help combat climate change.", "Use eco-friendly, reusable bags for grocery shopping to minimize single-use plastic waste."]
    
    var body: some View {
        VStack(alignment: .center){
            Text("Daily Challenges")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))
                .multilineTextAlignment(.center)
            
            Text("Click the button below to generate your challenge for today!")
                .multilineTextAlignment(.center)
                .padding(.horizontal, 10.0)
            
            Spacer()
                        Button("Challenge") {
                            if i != dailyChallenges.count {
                                challenge = dailyChallenges[i]
                                i+=1
                            } else {
                                challenge = ""
                            }
                        }
                        .padding(.top)
            Text(challenge)
                    }
        }
    }
    
    struct dailyChallenges_Previews: PreviewProvider {
        static var previews: some View {
            dailyChallenges()
        }
    }

