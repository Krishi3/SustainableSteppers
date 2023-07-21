//
//  journal.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-20.
//

import SwiftUI

struct journal: View {
    var body: some View {
        ZStack {
            RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            VStack{
                Text("Reflection Journal")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 30)
                    .padding(.all)
                
            }
        }
    }
    struct journal_Previews: PreviewProvider {
        static var previews: some View {
            journal()
        }
    }
}
