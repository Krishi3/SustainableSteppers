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
    
    var body: some View {
        
        ZStack {
            RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            VStack{
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
            
            Button(action: {
                buttonPressed(pinNumber: 1)
            }){
                Image("pushpin1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:70,height:70)
                    .position(x: 80, y: 310)
            }
            
            Button(action: {
                buttonPressed(pinNumber: 2)
            }){
                Image("pushpin2")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width:70,height:70)
                    .position(x: 130, y: 380)
            }
            
            
            Button(action: {
                buttonPressed(pinNumber: 3)
            }) {
                Image("pushpin3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:70,height:70)
                    .position(x: 320, y: 350)
            }
            
            Button(action: {
                buttonPressed(pinNumber: 4)
            }){
                Image("pushpin4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:70,height:70)
                    .position(x: 250, y: 300)
            }
        }
        
        
        struct ImpactHumans_Previews: PreviewProvider {
            static var previews: some View {
                ImpactHumans()
            }
        }
        
    }
}
