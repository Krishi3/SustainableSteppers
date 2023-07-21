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
                ZStack {
                    RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                        .ignoresSafeArea()
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
                            Text("According to the Intergovernmental Panel on Climate Change (IPCC), human activities have caused approximately 1.0°C of global warming above pre-industrial levels, primarily due to increased GHG emissions.")
                                .fontWeight(.bold)
                                .foregroundColor(Color(hue: 0.075, saturation: 0.908, brightness: 0.695))
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing], 20.0)
                        } else {
                            
                        }
                        
                        Spacer()
                        Text("Learn about the impact on...")
                            .fontWeight(.bold)
                        HStack (spacing: 5){
                            NavigationLink(destination: ImpactHumans()) {
                                Image("person1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.leading, 6.0)
                                        .frame(width:120,height:120)
                            }
                            Image("plant1")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.leading, 13.0)
                                .frame(width:140,height:140)
                            Image("animal")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .padding(.trailing, 18.0)
                                .frame(width:140,height:140)
                        }
                        HStack {
                            Text("Humans")
                                .padding(.trailing, 65.0)
                            Text("Plants")
                                .padding(.trailing, 83.0)
                            Text("Animals")
                                .padding(.leading,-8)
                        }
                        
                        Spacer()
                        
                            .toolbar {
                                ToolbarItemGroup(placement: .bottomBar) {
                                
                                    Spacer()
                  NavigationLink(destination: AboutUs()) {
                      Image("about")
                          .resizable()
                          .frame(width:75,height:75)
                    }
                                    
                                    Spacer()
                                    
                                    NavigationLink(destination: journal()) {
                                        Image("journal1")
                                            .resizable()
                                            .frame(width:75,height:105)
                                           
                                    }
                                  
                                    Spacer()
                                    
                                    NavigationLink(destination: TakeActionNow()) {
                                        Image("action1")
                                            .resizable()
                                            .frame(width:75,height:75)
                                           
                                    }
                                  
                                    Spacer()

                                    NavigationLink(destination: dailyChallenges()) {
                                        Image("score1")
                                            .resizable()
                                            .frame(width:75,height:75)
                                           
                                    }
                                    
                                    Spacer()
                                    
                                }
                            }
                        
                        NavigationLink(destination: TakeActionNow()) {
                            Text("OR TAKE ACTION NOW!!")
                                .fontWeight(.bold)
                                .foregroundColor(Color.black)
                                .padding(.bottom)
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
                

