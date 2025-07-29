//
//  immediateHelpPage.swift
//  BeaconApp
//
//  Created by Shruti Shivakumar on 7/29/25.
//

import SwiftUI

struct immediateHelpPage: View {
    var body: some View {
        
        NavigationStack{
            
            VStack {
                
                Text("Need Immediate Help? You are not alone. We are here for you.")
                    .bold()
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                    .cornerRadius(15)
                    .background(Color(.systemGroupedBackground))
                
                Text("Crisis Hotline: Dial 988")
                    .bold()
                    .font(.title3)
                    .cornerRadius(15)
                    .background(Color(.systemGroupedBackground))
                
                Text("Text Support: Text 000-741-1414")
                    .bold()
                    .font(.title3)
                    .cornerRadius(15)
                    .background(Color(.systemGroupedBackground))
                
                NavigationLink(destination: ContentView()){
                    Text("Return to Home")
                }
                
            }
            
        }
        
        
        .navigationTitle("Get Immediate Help")
        .navigationBarTitleDisplayMode(.inline)
        

        
        
        
    }
}

#Preview {
    immediateHelpPage()
}
