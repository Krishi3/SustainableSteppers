//
//  journal.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-20.
//

import SwiftUI
struct journal: View {
    //created a variable for journal entries
    @State private var entry = ""
    var body: some View {
        ZStack {
            //background gradient code
            RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            VStack{
                Text("Reflection Journal")
                    .font(Font.custom("SecularOne-Regular", size:38))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))
                    .multilineTextAlignment(.center)
                    .padding(.all, 2.0)
                
                Text("Reflect on the actions you complete, facts you learned and anything you feel down below!")
                Spacer()
               //text space for individuals to type their entries
                TextField("Start Typing Here...", text: $entry)
                    .frame(width: 300.0, height: 600.0)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .border(Color.black)
            }
        }
    }
    struct journal_Previews: PreviewProvider {
        static var previews: some View {
            journal()
        }
    }
}
