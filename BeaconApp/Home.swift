//
//  Home.swift
//  BeaconApp
//
//  Created by Ananya Gogula on 7/29/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            Text("beacon")
                .font(.system(size: 40))
                .fontWeight(.black)
        }
        .padding()
        
//how to adjust space between buttons?
        
        VStack(alignment: .center) {
            Spacer()
            Button {
                
            } label: {
                VStack{
                    Text("happy")
                        .font(.title3)
                    Text("🙂")
                        .font(.title3)
                }
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
            }
            Spacer()
            Button {
                
            } label: {
                VStack{
                    Text("SOS NOW")
                        .font(.title3)
                    Text("🆘")
                        .font(.title3)
                }
            }
            Spacer()
            }
        .padding()
    }
}

#Preview {
    Home()
}
