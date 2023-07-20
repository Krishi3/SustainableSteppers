//
//  AboutUs.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-19.
//
import SwiftUI

struct AboutUs: View {
    @State private var earthButton = false
    var body: some View {
        NavigationStack{
            VStack {
                Text("About Us")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))                    .multilineTextAlignment(.center)
                    .padding(.bottom)
                
                Text("Sustainable Steppers aims to help fight against climate change by helping YOU reduce your carbon footprint!")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 35.0)
                    .padding(.bottom, 5.0)
               
                Button("🌍") {
                    earthButton.toggle()
                }
                    .font(.largeTitle)
              
                if earthButton == true {
                    Text("Information about climate change here.")
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing], 20.0)
                } else {
                    
                }
                
                Spacer()
                Text("Learn about the impact on...")
                    .fontWeight(.bold)
                HStack (spacing: 10){
                    Image("human")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.leading, 6.0)
                    Image("plant")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing, 8.0)
                    Image("animals")
                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing, 15.0)
                }
                HStack {
                    Text("Humans")
                        .padding(.trailing, 30.0)
                    Text("Plants")
                        .padding(.horizontal, 30.0)
                    Text("Animals")
                        .padding(.leading, 30.0)
                    
                }
                
                Spacer()
                
                    .toolbar {
                        ToolbarItemGroup(placement: .bottomBar) {
                        
                            Spacer()
        //                    ToolbarItem(placement:.bottomBar){
                                NavigationLink(destination: ContentView()) {
                                    Image("logo")
                                        .resizable()
                                        .frame(width:75,height:75)
                                }

        //                    }
                            
                            Spacer()
                            
                            NavigationLink(destination: ContentView()) {
                                Image("logo")
                                    .resizable()
                                    .frame(width:75,height:75)
                                   
                            }
                          
                            Spacer()
                            
                            NavigationLink(destination: ContentView()) {
                                Image("logo")
                                    .resizable()
                                    .frame(width:75,height:75)
                                   
                            }
                          
                            Spacer()

                            NavigationLink(destination: ContentView()) {
                                Image("logo")
                                    .resizable()
                                    .frame(width:75,height:75)
                                   
                            }
                            
                            Spacer()
                            
                        }

                    }
            }
            

        }
    }
    
    struct AboutUs_Previews: PreviewProvider {
        static var previews: some View {
            AboutUs()
        }
    }
}
