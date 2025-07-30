//
//  immediateHelpPage.swift
//  BeaconApp
//
//  Created by Shruti Shivakumar on 7/29/25.
//

import SwiftUI

struct immediateHelpPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                
                RadialGradient(colors: [Color("lightpink"), Color("lightyellow"),Color("lightgreen"), Color("lightblue"), Color("lightpurple")], center: .topLeading, startRadius: 845, endRadius: 111)
                    .ignoresSafeArea()
                
                
                VStack(spacing: 30) {
                    Text("Beacon")
                        .foregroundStyle(Color.black)
                        .font(.largeTitle)
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding([.top], 60)
                    
                    
                    VStack(spacing: 50) {
                        
                        Text("Need Immediate Help? You are not alone. We are here for you.")
                            .bold()
                            .font(.title2)
                            .foregroundStyle(Color.black)
                        
                    }
                    
                    
                    
                    VStack(spacing: 10){
                        
                        Text("🆘 Crisis Hotline: Dial 988")
                            .padding(20)
                            .bold()
                            .font(.title3)
                            .cornerRadius(20)
                            .multilineTextAlignment(.leading)
                        
                        Text("📱Text Support: Text 000-741-1414")
                            .bold()
                            .font(.title3)
                            .cornerRadius(15)
                            .multilineTextAlignment(.leading)
                            .padding([.bottom], 20)
                    }
                    
                    
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    
                    Spacer()
                  
                    
                } //large v stack end
                
                NavigationLink(destination: ContentView()){
                    Text("Click me")
                        .padding([.top], 100)
                        .foregroundStyle(Color(.black))
                }
                
                
                
            }//large zstack end
        }//nav stack end
        
        .background(RadialGradient(colors: [Color("lightpink"), Color("lightyellow"),Color("lightgreen"), Color("lightblue"), Color("lightpurple")], center: .topLeading, startRadius: 770, endRadius: 150))
        .ignoresSafeArea()
        
        
        
        
    } // og set up closing
} // some view closing

#Preview {
    immediateHelpPage()
}
