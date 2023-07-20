//
//  ImpactHumans.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-20.
//

import SwiftUI

struct ImpactHumans: View {
    var body: some View {
        VStack{
            Text("Impact on Humans")
            Spacer()
            Image("map")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)            
            Spacer()
        }
    }
}

struct ImpactHumans_Previews: PreviewProvider {
    static var previews: some View {
        ImpactHumans()
    }
}
