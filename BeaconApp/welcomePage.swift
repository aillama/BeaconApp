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
            Text("Hello! What is your name?")
                .font(.title2)
            
            TextField("type name here...", text: $tempInput)
                .padding()
            //this border allows you to round the corners; the commented border function doesn't let you round the corners
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(.black, lineWidth: 1)
                )
            //.border(Color.black, width: 1)
                .padding()
            
            Button {
                SharedData.name = tempInput
                navigate=true
            } label: {
                Text("submit")
            }
            .padding()
            .background(.black)
            .foregroundStyle(.white)
            .cornerRadius(15)
            //these two aren't working for some reason - figure it out!
            //.controlSize(.large)
            //.frame(width: 300, height: 50)
            
            //way to navigate to next page/view
            .navigationDestination(isPresented: $navigate) {
                            Home()
                        }
        }
        
    }
}

#Preview {
    welcomePage()
        .environmentObject(sharedData()) // <- Inject dummy data for preview (from ChatGPT)
}
