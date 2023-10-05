//
//  dailyChallenges.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-20.
//

import SwiftUI

struct dailyChallenges: View {
    //sets variables for counter in each array
    @State private var i1 = 0
    @State private var i2 = 0
    //sets a variable for a challenge
    @State private var challenge = ""
    //creates an array of challenges for adults
    @State private var dailyChallengesAdults = ["Make a plan for what exactly you want to buy at the grocery store limits the waste outcome.","Choose to buy local and seasonal produce, reducing the carbon footprint associated with transporting food long distances.","Use eco-friendly, reusable bags for grocery shopping to minimize single-use plastic waste."]
    //creates an array of challenges for children
    @State private var dailyChallengesChildren = ["Walk, bike, or use public transportation instead of driving a car to improve your well-being and reduce your carbon footprint.","Sharing a ride reduces the amount of carbon emitted into the atmosphere.", "Plant a tree or participate in a local tree-planting initiative to help combat climate change."]
    
    var body: some View {
            NavigationStack {
                ZStack {
                    //background gradient colour code
                    RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                        .ignoresSafeArea()
                VStack(alignment: .center){
                    Text("Daily Challenges")
                        .font(Font.custom("SecularOne-Regular", size:36))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    Text("Click the button below to generate your challenge for today!")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10.0)
                    //buttont to display an adult challenge
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
                    .tint(Color(hue: 0.365, saturation: 0.38, brightness: 0.3))
                    //buttont to display a children's challenge
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
                    .tint(Color(hue: 0.365, saturation: 0.38, brightness: 0.3))
                    //displays what the challenge is
                    Text(challenge)
                        .font(Font.custom("ComicNeue-Regular", size:20))
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
                   //links to take action now page to update tasks completed
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

