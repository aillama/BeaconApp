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
          Text("beacon")
            .font(.system(size: 44, weight: .heavy, design: .rounded))
            .foregroundColor(.white)
            .padding(.vertical, 15)
            .padding(.horizontal, 60)
            .background(
              Color.black.opacity(0.6)
                .cornerRadius(25)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
            )
            .padding(.top, 30)
            .frame(maxWidth: .infinity)
          VStack(spacing: 50) {
            Text("Need Immediate Help? You are not alone. We are here for you.")
              .bold()
              .font(.title2)
              .foregroundStyle(Color.black)
          }
          VStack(spacing: 10){
            Text(":sos: Crisis Hotline: Dial 988")
              .padding(20)
              .bold()
              .font(.title3)
              .cornerRadius(20)
              .multilineTextAlignment(.leading)
            Text(":iphone:Text Support: Text 000-741-1414")
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
          
          
          VStack(spacing:20) {
              NavigationLink(destination: NotesView()){
                  Text("Need to write something down?")
                      .font(.headline)
                      .padding()
                      .background(Color.white.opacity(0.9))
                      .foregroundColor(Color(red: 0.55, green: 0.25, blue: 0.35))
                      .cornerRadius(15)
                      .padding(.horizontal)
                      .padding(.top, 300)
              }
              
              NavigationLink(destination: Home()){
                  Text("Get Inspired")
                      .font(.headline)
                      .padding()
                      .background(Color.white.opacity(0.9))
                      .foregroundColor(Color(red: 0.55, green: 0.25, blue: 0.35))
                      .cornerRadius(15)
                      .padding(.horizontal)
                  
              }
              
              NavigationLink(destination:welcomePage()) {
                  Text("Do something here")
                      .font(.headline)
                      .padding()
                      .background(Color.white.opacity(0.9))
                      .foregroundColor(Color(red: 0.55, green: 0.25, blue: 0.35))
                      .cornerRadius(15)
                      .padding(.horizontal)
              }
              
              
          } // end of v stack with the nav links
          
          
      }//large zstack end
    }//nav stack end
    .background(RadialGradient(colors: [Color("lightpink"), Color("lightyellow"),Color("lightgreen"), Color("lightblue"), Color("lightpurple")], center: .topLeading, startRadius: 770, endRadius: 150))
    .ignoresSafeArea()
  } // og set up closing
} // some view closing
#Preview {
  immediateHelpPage()
}
