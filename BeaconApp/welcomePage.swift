//
//  welcomePage.swift
//  BeaconApp
//
//  Created by Ananya Gogula on 7/29/25.
//

import SwiftUI

class sharedData: ObservableObject {
    @Published var name: String = ""
}


struct welcomePage: View {
    
    
    @EnvironmentObject var SharedData: sharedData
    @State private var tempInput: String = ""
    @State private var navigate = false //tracks if we should go to next page (ChatGPT)
    
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                RadialGradient(
                    colors: [
                        Color(.lightyellow).opacity(0.9),
                        Color(.lightpink)
                    ],
                    center: .topLeading,
                    startRadius: 845,
                    endRadius: 111
                )
                .ignoresSafeArea()
                
                VStack{
                    
                    Text("beacon")
                        .font(.system(size: 44, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 60)
                        .background(
                            Color(red: 0.42, green: 0.25, blue: 0.34)
                                .cornerRadius(25)
                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                        )
                        .padding(.top, 3)
                        .frame(maxWidth: .infinity)
                    
                    Spacer()
                    
                    Text("Hello! What is your name?")
                        .font(.title)
                        .foregroundColor(Color(red: 0.12, green: 0.07, blue: 0.09))
                        .padding()

                       

                    
                        //.background(Color(.white))
                        //.cornerRadius(15)
                    
                    TextField("Type name here...", text: $tempInput)
                        .padding()
                    //this border allows you to round the corners; the commented border function doesn't let you round the corners
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(.black, lineWidth: 1)
                                .background(Color(.white))
                                .cornerRadius(15)
                        )
                    //.border(Color.black, width: 1)
                        .padding()
                    
                    Button {
                        SharedData.name = tempInput
                        navigate=true
                    } label: {
                        Text("Submit")
                    }
                    .padding()
                    .background(
                        Color(red: 0.00, green: 0.00, blue: 0.00))

                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    //these two aren't working for some reason - figure it out!
                    //.controlSize(.large)
                    //.frame(width: 300, height: 50)
                    
                    //way to navigate to next page/view
                    .navigationDestination(isPresented: $navigate) {
                        Home()
                    }
                    
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    welcomePage()
        .environmentObject(sharedData()) // <- Inject dummy data for preview (from ChatGPT)
}
