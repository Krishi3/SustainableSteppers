//
//  ImpactHumans.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-20.
//

import SwiftUI

struct ImpactHumans: View {
    func buttonPressed(pinNumber : Int) {
        print("button \(pinNumber)")
    }
@State private var bOne = false
@State private var bTwo = false
@State private var bThree = false
@State private var bFour = false
@State private var textValue = ""
    
    var body: some View {
        
        ZStack {
            RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            VStack {
                Text("Impact on Humans")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))
                    .multilineTextAlignment(.center)
                
                Text("Climate change has far-reaching impacts on human lives, posing significant challenges to health, livelihoods, and overall well-being. Some include causing heat-illnesses, poverty and disrupting infrastructure.")
                    .multilineTextAlignment(.center)
                    .padding(.all, 20.0)
                
                Image("map")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }

            VStack{
            HStack{
                Button(action: {
                    buttonPressed(pinNumber: 1)
                    textValue = "India: India is experiencing significant impacts of climate change, with rising temperatures and more frequent extreme weather events. Coastal regions are vulnerable to sea-level rise, posing threats to billions of people living in low-lying areas. Additionally, changing weather patterns disrupt monsoon rains, impacting agriculture, which employs a substantial portion of the population. India's efforts to combat climate change are crucial for safeguarding its environment, people, and economic development."
                }){
                    Image("pushpin1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:70,height:70)
                        .position(x: 60, y: 240)
                }
                .padding()
                
                Button(action: {
                    buttonPressed(pinNumber: 4)
                    textValue = "Brazil: Climate change poses substantial risks to Brazil's unique ecosystems, including the Amazon rainforest, which faces deforestation and increasing vulnerability to wildfires. Changes in precipitation patterns and temperature shifts affect agriculture and water availability, impacting livelihoods and food security. Brazil's commitment to sustainable land use, forest conservation, and renewable energy is vital for protecting its biodiversity and mitigating climate change impacts."
                }){
                    Image("pushpin4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:70,height:70)
                        .position(x: 2, y: 300)
                }
                .padding(.horizontal, 50.0)
            }
            
            HStack{
                Button(action: {
                    buttonPressed(pinNumber: 2)
                    textValue = "Bangladesh: As one of the most climate-vulnerable countries, Bangladesh faces rising sea levels, cyclones, and flooding, leading to land loss and mass migration. Agricultural productivity declines due to changing weather patterns, impacting food security. Addressing climate change is imperative for Bangladesh's sustainable development and the well-being of its population, particularly those residing in low-lying coastal areas."
                }){
                    Image("pushpin2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:70,height:70)
                        .position(x: 120, y: -20)
                    
                }
                
                Button(action: {
                    buttonPressed(pinNumber: 3)
                    textValue = "United States: The United States is witnessing the effects of climate change through intensifying hurricanes, wildfires, and heat waves. Rising sea levels threaten coastal cities and infrastructure, causing economic losses and displacing communities. Extreme weather events strain emergency services, disrupt supply chains, and pose health risks to vulnerable populations. Addressing climate change requires comprehensive policies to reduce greenhouse gas emissions, strengthen infrastructure, and build resilience in vulnerable regions."
                    
                }) {
                    Image("pushpin3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:70,height:70)
                        .position(x: 150, y: -10)
                }
            }
                
                Text(textValue)
                
            }
        }
        
    }

        
        struct ImpactHumans_Previews: PreviewProvider {
            static var previews: some View {
                ImpactHumans()
            }
        }
    }

