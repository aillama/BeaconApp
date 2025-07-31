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
                    NavigationLink (destination: Home()){
                        Text("beacon")
                            .font(.system(size: 44, weight: .heavy, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 60)
                            .background(
                                Color(red: 0.18, green: 0.12, blue: 0.28)
                                    .opacity(0.85)
                                
                                    .cornerRadius(25)
                                    .shadow(color: Color(red: 0.25, green: 0.15, blue: 0.1).opacity(0.5), radius: 10, x: 0, y: 5)
                                
                                
                                
                            )
                            .padding(.top, 45)
                            .frame(maxWidth: .infinity)
                    }
                                        
                    HStack {
                        Text("Hello, \(sharedData.name)! How are you today?")
                            .font(.system(size: 24, weight: .semibold, design: .rounded))
                            .foregroundColor(Color(red: 0.10, green: 0.18, blue: 0.12))
                            .multilineTextAlignment(.center)
                            .padding(.top, 30)
    
                        
                    }
                    
                    

                    
                    
                    //how to adjust space between buttons?
                    //idea - making a function that hold all the button formatting (since it's the same for all of them) and then calling that function would make the code neater
                    
                    VStack(alignment: .center) {
                        
                        
                    //this is the way to link different pages/views with a button: set a state variable before in the struct and set it to false, in button actions make it true, and then use the navigation destination feature under the button
                        Button {
                            showHappyPage = true
                        } label: {
                            VStack{
                                Text("happy")
                                    .font(.title2)
                                    .foregroundColor(Color(red: 0.10, green: 0.18, blue: 0.12))
                                Text("🙂")
                                    .font(.title)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke((Color(red: 0.10, green: 0.18, blue: 0.12)), lineWidth: 3)
                                    .frame(width: 140, height: 80)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                                    .padding()
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
                                    .font(.title2)
                                    .foregroundColor(Color(red: 0.10, green: 0.18, blue: 0.12))
                                Text("☹️")
                                    .font(.title)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke((Color(red: 0.10, green: 0.18, blue: 0.12)), lineWidth: 3)
                                    .frame(width: 140, height: 80)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                            )
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: StressedPage()) {
                            VStack{
                                Text("stressed")
                                    .font(.title2)
                                    .foregroundColor(Color(red: 0.10, green: 0.18, blue: 0.12))
                                Text("😰")
                                    .font(.title)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke((Color(red: 0.10, green: 0.18, blue: 0.12)), lineWidth: 3)
                                    .frame(width: 140, height: 80)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                            )
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: AngryPage()) {
                            VStack{
                                Text("angry")
                                    .font(.title2)
                                    .foregroundColor(Color(red: 0.10, green: 0.18, blue: 0.12))
                                Text("😡")
                                    .font(.title)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke((Color(red: 0.10, green: 0.18, blue: 0.12)), lineWidth: 3)
                                    .frame(width: 140, height: 80)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                            )
                        }
                        
                        Spacer()
                        
                        NavigationLink (destination: TiredPage()) {
                            VStack{
                                Text("tired")
                                    .font(.title2)
                                    .foregroundColor(Color(red: 0.10, green: 0.18, blue: 0.12))
                                Text("😴")
                                    .font(.title)
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke((Color(red: 0.10, green: 0.18, blue: 0.12)), lineWidth: 3)
                                    .frame(width: 140, height: 80)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                            )
                        }
                        
                        Spacer()
                        
                        NavigationLink (destination: immediateHelpPage()) {
                            VStack{
                                Text("SOS")
                                    .font(.title2)
                                    .foregroundColor(Color(red: 0.10, green: 0.18, blue: 0.12))
                                Text("🆘")
                                    .font(.title)
                                
                        
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke((Color(red: 0.10, green: 0.18, blue: 0.12)), lineWidth: 3)
                                    .frame(width: 140, height: 80)
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
            //dated way of doing it
//            .navigationBarItems(
//                leading: Image("phone-call")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .padding(4.0)
//            )
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: NotesView()) {
                        Image("writing")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color(red: 0.18, green: 0.12, blue: 0.28).opacity(0.85))
                            .frame(width: 24, height: 24)
                            
                    }
                }
            }

            .padding(.bottom, 60)
        }
        
        
        
    }
}

#Preview {
    Home()
        .environmentObject(sharedData()) // <- Inject dummy data for preview (from ChatGPT)
}
