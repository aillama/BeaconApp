//
//  NotesView.swift
//  BeaconApp
//
//  Created by Kate MacGuire on 7/29/25.
//

import SwiftUI

struct NotesView: View {
    @State private var notesText = ""
    
    var body: some View {
        ZStack {
            RadialGradient(colors: [Color("lightpink"), Color("lightyellow"),Color("lightgreen"), Color("lightblue"), Color("lightpurple")], center: .topLeading, startRadius: 845, endRadius: 111)
                .ignoresSafeArea()
            
            .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Journal 🌟")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.top)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .offset(x: 5, y: 70)
                
                Text("beacon")
                    .font(.system(size: 34, weight: .heavy, design: .rounded))
                    .foregroundColor(Color("lightpurple"))
                    .offset(x: 87 , y: -48)
                    .padding(.vertical, 1)
                    .padding(.horizontal, 50)
                    .background(
                        Color.white.opacity(0.5)
                            .cornerRadius(25)
                            .shadow(color: Color.white, radius: 10, x: 0, y: 5)
                            .opacity(1.5)
                            .offset(x:87 , y: -47)

                    )
                                 
                                 Spacer()
                                 
                                 TextEditor(text: $notesText)
                                     .padding()
                                     .frame(height: 670)
                                     .background(Color.white.opacity(0.1))
                                     .cornerRadius(10)
                                     .overlay(
                                         RoundedRectangle(cornerRadius: 5)
                                            .stroke(Color.white.opacity(0.5), lineWidth:1.5)
                                     )
                                     .foregroundColor(.black)
                                     .padding()
                             }
                         }
                     }
                 }

                 
                 #Preview {
                     NotesView()
                 }
