//
//  SadPage.swift
//  BeaconApp
//
//  Created by Arin Sood on 7/29/25.
//

import SwiftUI

struct SadPage: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Beacon")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding()
            
            Text("It's okay to feel down sometimes.")
                .padding()
           
            VStack(alignment: .leading, spacing:15){
                
           Text("**You matter.** This feeling won't last forever.") //Change text for every view
          .font(.body)
          .foregroundColor(.primary)
          .padding(.bottom)
                Text("5 Quick Tips:")
                    .font(.headline)

               Text("📞   Call or text someone you trust")
                Text("📝  Write down 5 things you're grateful for")
                Text("🧡  Watch something that makes you laugh")
                Text("🎧  Listen to calming music")
                Text("🧘  Take a few deep breaths or try a short meditation session")
            }
            .padding()
            .background(Color(.systemGray4))
            .cornerRadius(10)
            .padding(.horizontal)
            .frame(alignment:.center)
            Spacer()
                
            
            VStack(spacing:15){
               //button goes here
                
                Text("Need to write something down?")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding()
            }
            
           //button goes here
            
            Text("Need more support?")
                .padding()
                .frame(maxWidth:.infinity)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
            
            Spacer()
                
        }
        
    }
   
}
    

#Preview {
    SadPage()
}
