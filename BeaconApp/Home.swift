//
//  Home.swift
//  BeaconApp
//
//  Created by Ananya Gogula on 7/29/25.
//

import SwiftUI


struct Home: View {
    @EnvironmentObject var sharedData: sharedData
    
    var body: some View {
        
        
        ZStack {
            
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
                
                Button {
                    
                } label: {
                    VStack{
                        Text("happy")
                            .font(.title3)
                        Text("🙂")
                            .font(.title3)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 2)
                            .frame(width: 100, height: 60)

                    )
                    
                }
                Spacer()
                Button {
                    
                } label: {
                    VStack{
                        Text("sad")
                            .font(.title3)
                        Text("☹️")
                            .font(.title3)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 2)
                            .frame(width: 100, height: 60)
                    )
                }
                Spacer()
                Button {
                    
                } label: {
                    VStack{
                        Text("stressed")
                            .font(.title3)
                        Text("😰")
                            .font(.title3)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 2)
                            .frame(width: 100, height: 60)
                    )
                }
                Spacer()
                Button {
                    
                } label: {
                    VStack{
                        Text("angry")
                            .font(.title3)
                        Text("😡")
                            .font(.title3)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 2)
                            .frame(width: 100, height: 60)
                    )
                }
                Spacer()
                Button {
                    
                } label: {
                    VStack{
                        Text("tired")
                            .font(.title3)
                        Text("😴")
                            .font(.title3)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 2)
                            .frame(width: 100, height: 60)
                    )
                }
                Spacer()
                Button {
                    
                } label: {
                    VStack{
                        Text("SOS")
                            .font(.title3)
                        Text("🆘")
                            .font(.title3)
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.black, lineWidth: 2)
                            .frame(width: 100, height: 60)
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

#Preview {
    Home()
        .environmentObject(sharedData()) // <- Inject dummy data for preview (from ChatGPT)
}
