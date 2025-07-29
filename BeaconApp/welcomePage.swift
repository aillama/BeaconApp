//
//  welcomePage.swift
//  BeaconApp
//
//  Created by Ananya Gogula on 7/29/25.
//

import SwiftUI

struct welcomePage: View {
    
    @State private var name: String = ""
    
    var body: some View {
        Text("Hello! What is your name?")
        
        TextField("type name here...", text: $name)
            .padding()
        //this border allows you to round the corners; the commented border function doesn't let you round the corners
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black, lineWidth: 1)
            )
            //.border(Color.black, width: 1)
            .padding()
        
        Button {
            
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
        
    }
}

#Preview {
    welcomePage()
}
