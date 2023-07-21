//
//  dailyChallenges.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-20.
//

import SwiftUI

struct dailyChallenges: View {
    @State private var i1 = 0
    @State private var i2 = 0
    @State private var challenge = ""
    @State private var dailyChallengesAdults = ["Make a plan for what exactly you want to buy at the grocery store limits the waste outcome.","Choose to buy local and seasonal produce, reducing the carbon footprint associated with transporting food long distances.","Use eco-friendly, reusable bags for grocery shopping to minimize single-use plastic waste."]
    
    @State private var dailyChallengesChildren = ["Walk, bike, or use public transportation instead of driving a car to improve your well-being and reduce your carbon footprint.","Sharing a ride reduces the amount of carbon emitted into the atmosphere.", "Plant a tree or participate in a local tree-planting initiative to help combat climate change."]
    
    var body: some View {
            NavigationStack {
                ZStack {
                    RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                        .ignoresSafeArea()
                VStack(alignment: .center){
                    Text("Daily Challenges")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    Text("Click the button below to generate your challenge for today!")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10.0)
                    
                    Button("Adult Challenge!!") {
                        if i1 != dailyChallengesAdults.count {
                            challenge = dailyChallengesAdults[i1]
                            i1+=1
                        } else {
                            challenge = ""
                        }
                    }
                    .padding(.top)
                    .buttonStyle(BorderedProminentButtonStyle())
                    .tint(.orange)
                    
                    Button("Children Challenge!!") {
                        if i2 != dailyChallengesChildren.count {
                            challenge = dailyChallengesChildren[i2]
                            i2+=1
                        } else {
                            challenge = ""
                        }
                    }
                    .padding(.vertical)
                    .buttonStyle(BorderedProminentButtonStyle())
                    .tint(.orange)
                    
                    
                    Text(challenge)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    Image("img1")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                    Text("Done the Challenge? Head to the task center to enter your tasks ⬇️!")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .bottom, .trailing])
                    
                    NavigationLink(destination: TakeActionNow()) {
                        Text("Take Action Now Page")
                            .fontWeight(.heavy)
                            .foregroundColor(Color(hue: 0.074, saturation: 0.823, brightness: 0.484))
                    }

                    
                    Spacer()
                }
            }
        }
    }
}
    
    struct dailyChallenges_Previews: PreviewProvider {
        static var previews: some View {
            dailyChallenges()
        }
    }

