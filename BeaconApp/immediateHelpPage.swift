//
//  immediateHelpPage.swift
//  BeaconApp
//
//  Created by Shruti Shivakumar on 7/29/25.
//

import SwiftUI

struct immediateHelpPage: View {
    var body: some View {
    
            
        Text("Beacon")
            .foregroundStyle(Color.black)
            .font(.largeTitle)
            .bold()
            .multilineTextAlignment(.center)
        
        Spacer()
        Spacer()
        Spacer()
            
        VStack(spacing: 30) {
            
            VStack(spacing: 50) {
                
                Text("Need Immediate Help? You are not alone. We are here for you.")
                    .bold()
                    .font(.title2)
                    .foregroundStyle(Color.blue)
                
            }
            
            
            
            VStack(){
                
                Text("🆘 Crisis Hotline: Dial 988")
                    .padding(20)
                    .bold()
                    .font(.title3)
                    .cornerRadius(20)
                    .multilineTextAlignment(.leading)
                    .background(Color(.tertiarySystemGroupedBackground))
                
                
                Text("📱Text Support: Text 000-741-1414")
                    .bold()
                    .font(.title3)
                    .cornerRadius(15)
                    .background(Color(.tertiarySystemGroupedBackground))
                    .padding(20)
                
                
                
            }
            
            
            .background(Color(.tertiarySystemGroupedBackground))
            .cornerRadius(15)
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            
            
            
            
            
            
            
            
        }
                

        

    }
}

#Preview {
    immediateHelpPage()
}
