//
//  Home.swift
//  BeaconApp
//
//  Created by Ananya Gogula on 7/29/25.
//

import SwiftUI


struct Home: View {
    @EnvironmentObject var sharedData: sharedData
    @State private var showHappyPage = false
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                RadialGradient(
                    colors: [
                        Color("lightpurple").opacity(0.9),
                        Color("lightblue").opacity(0.9),
                        Color("lightgreen").opacity(0.9),
                        Color("lightyellow").opacity(0.9),
                        Color("lightpink").opacity(0.9)
                    ],
                    center: .topLeading,
                    startRadius: 845,
                    endRadius: 111
                )
                .ignoresSafeArea()
                
                VStack {
                    Text("beacon")
                        .font(.system(size: 44, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 60)
                        .background(
                            Color.black.opacity(0.8)
                                .cornerRadius(25)
                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                        )
                        .padding(.top, 3)
                        .frame(maxWidth: .infinity)
                    
                    HStack{
                        Text("Hello, \(sharedData.name)! How are you today?")
                            .multilineTextAlignment(.leading)
                    }
                    .padding()
                    
                    
                    //how to adjust space between buttons?
                    //idea - making a function that hold all the button formatting (since it's the same for all of them) and then calling that function would make the code neater
                    
                    VStack(alignment: .center) {
                        
                        
                    //this is the way to link different pages/views with a button: set a state variable before in the struct and set it to false, in button actions make it true, and then use the navigation destination feature under the button
                        Button {
                            showHappyPage = true
                        } label: {
                            VStack{
                                Text("happy")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                                Text("🙂")
                                    .font(.title3)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black, lineWidth: 2)
                                    .frame(width: 100, height: 60)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                            )
                            
                        }
                        .navigationDestination(isPresented: $showHappyPage) {
                                                HappyPage()
                                            }
                        Spacer()
                        
                        //this is the way to link different pages/views using a navigation link; kinda acts like a button, easier if the buttons only action is to go to another page
                        NavigationLink(destination: SadPage()) {
                            VStack{
                                Text("sad")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                                Text("☹️")
                                    .font(.title3)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black, lineWidth: 2)
                                    .frame(width: 100, height: 60)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                            )
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: StressedPage()) {
                            VStack{
                                Text("stressed")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                                Text("😰")
                                    .font(.title3)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black, lineWidth: 2)
                                    .frame(width: 100, height: 60)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                            )
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: AngryPage()) {
                            VStack{
                                Text("angry")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                                Text("😡")
                                    .font(.title3)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black, lineWidth: 2)
                                    .frame(width: 100, height: 60)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                            )
                        }
                        
                        Spacer()
                        
                        NavigationLink (destination: TiredPage()) {
                            VStack{
                                Text("tired")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                                Text("😴")
                                    .font(.title3)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black, lineWidth: 2)
                                    .frame(width: 100, height: 60)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                            )
                        }
                        
                        Spacer()
                        
                        NavigationLink (destination: immediateHelpPage()) {
                            VStack{
                                Text("SOS")
                                    .font(.title3)
                                    .foregroundColor(Color.black)
                                Text("🆘")
                                    .font(.title3)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.black, lineWidth: 2)
                                    .frame(width: 100, height: 60)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                            )
                        }
                        
                        Spacer()
                    }
                    .padding()
                }
                .padding()
            }
        }
        
    }
}

#Preview {
    Home()
        .environmentObject(sharedData()) // <- Inject dummy data for preview (from ChatGPT)
}
