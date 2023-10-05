//
//  ContentView.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-17.
//%

import SwiftUI

struct ContentView: View {
    //created an array that stores various fun facts in relation to carbon footprint and climate change
    @State private var funFacts = ["Recycling one aluminum can save enough energy to power a TV for 3 hours!", "The temperature of the Earth has risen about 1.2°C since the late 19th century due to human-induced global warming.", "Over one million seabirds and 100,000 marine animals die each year due to plastic pollution in the oceans."]
    //created a variable random fact that will display a fact in the array when button is clicked
    @State private var randomFact = ""
    //created a variable i, as the counter
    @State private var i = 0
    
    var body: some View {
            //created the layout and design of the app home screen
            NavigationStack {
            //created the background gradient in the UI design
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
                        .shadow(radius: 4.0)
                    
                    Text("Stepping into a sustainable world")
                        .padding(.bottom, 3.0)
                        .italic()
                    
                    Spacer()
                    //created a button which will displays the funFacts found in the array as it goes through each element
                    Button("Quick Fact") {
                        //if the total number of elements in the array is not reached, it will continue to go through the array, displaying more facts
                        if i != funFacts.count {
                            randomFact = funFacts[i]
                            i+=1
                        }
                        //when there are no facts left, nothing will display
                        else {
                            randomFact = ""
                        }
                    }
                    .padding(.top)
                }
                //styling of button
                .padding(.bottom, 200.0)
                .buttonStyle(BorderedProminentButtonStyle())
                .tint(Color(hue: 0.365, saturation: 0.38, brightness: 0.3))
                Spacer()
                    Text(randomFact)
                        .font(Font.custom("ComicNeue-Regular", size:22))
                        .multilineTextAlignment(.center)
                    .padding(.top, 500.0)
                    .padding(.horizontal, 20.0)
              //navigation link: links this page to the about us page
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

