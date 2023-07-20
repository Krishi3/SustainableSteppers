//
//  ContentView.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-17.
//

import SwiftUI

struct ContentView: View {
    @State private var funFacts = [
        "fact1", "fact2", "fact3"]
    @State private var randomFact = ""
    @State private var i = 0
    
    var body: some View {
            
            NavigationStack {
                ZStack {
                    RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                        .ignoresSafeArea()
                VStack(alignment: .center) {
                    Text("Welcome to the Sustainable Steppers!")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))
                        .multilineTextAlignment(.center)
                        .padding(.all, 30.0)

                    Image("logo2")

                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 25.0)
                        .clipShape(Circle())
                    
                    Text("Stepping into a sustainable world")
                        .padding(.bottom, 3.0)
                        .italic()
                    
                    Spacer()
                    
                    Button("Quick Fact") {
                        if i != funFacts.count {
                            randomFact = funFacts[i]
                            i+=1
                        }
                        else {
                            randomFact = ""
                        }
                    }
                    .padding(.top)
                }
                .padding(.bottom, 200.0)
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(Color(hue: 0.365, saturation: 0.38, brightness: 0.3))
                Spacer()
                Text(randomFact)
                    .padding(.top, 450.0)
              
                NavigationLink(destination: AboutUs()) {
                    Text("Click here to begin!")
                        .foregroundColor(Color.purple)
                }
                .padding(.top,700.0)
            }
        }
    }
            }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

