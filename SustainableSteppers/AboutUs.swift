//
//  AboutUs.swift
//  SustainableSteppers
//
//  Created by Krishi Dalal on 2023-07-19.
//
import SwiftUI

struct AboutUs: View {
    //create a variable set as a boolean for the earth button
    @State private var earthButton = false
    var body: some View {
            NavigationStack{
                //page layout + design code
                ZStack {
                    RadialGradient(colors: [Color.accentColor, Color.green] , center: .center, startRadius: 200, endRadius: 400)
                        .ignoresSafeArea()
                    VStack {
                        Text("About Us")
                            .font(.custom("SecularOne-Regular", size:46))
                            .fontWeight(.medium)
                            .foregroundColor(Color(hue: 0.741, saturation: 0.901, brightness: 0.733))                    .multilineTextAlignment(.center)
                            .padding(.bottom)
                        
                        Text("Sustainable Steppers aims to help fight against climate change by helping YOU reduce your carbon footprint!")
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 35.0)
                            .padding(.bottom, 5.0)
                       
                        Button("🌍") {
                            //allows one to open and close text that appears with button
                            earthButton.toggle()
                        }
                            .font(.largeTitle)
                      //if the button is set to true, it will display the text
                        if earthButton == true {
                            Text("According to the Intergovernmental Panel on Climate Change (IPCC), human activities have caused approximately 1.0°C of global warming above pre-industrial levels, primarily due to increased GHG emissions.")
                                .font(Font.custom("ComicNeue-Regular", size:20))
                                .fontWeight(.bold)
                                .foregroundColor(Color(hue: 0.075, saturation: 0.908, brightness: 0.695))
                                .multilineTextAlignment(.center)
                                .padding([.top, .leading, .trailing], 20.0)
                        } else {
                        }

                        Spacer()
                        Text("Learn about the impact on...")
                            .fontWeight(.bold)
                        //arranges the images in a row format
                        HStack (spacing: 5){
                            //links to the human impact page
                            NavigationLink(destination: ImpactHumans()) {
                                Image("climateChange2")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:120,height:120)
                                        .padding(.leading, -60.0)
                                        .padding(.trailing, -100.0)
                                Image("person1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.trailing, -2000)
                                        .frame(width:120,height:120)
                            }
                            Image("climateChange")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.trailing, -90.0)
                                    .frame(width:100,height:120)
    
                        }
                        HStack {
                            Text("Humans")
                                .padding(.trailing, 1.0)
                        }
                        
                        Spacer()
                        //creates a navigation tool bar to access various pages of the app
                            .toolbar {
                                ToolbarItemGroup(placement: .bottomBar) {
                                
                                    Spacer()
                                    NavigationLink(destination: ContentView()) {
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
                                        Image("challenges")
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
                


