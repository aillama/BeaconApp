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
            LinearGradient(
                gradient: Gradient(colors: [.pink, .yellow, .blue]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
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
                    .foregroundColor(Color(red: 0.985, green: 0.601, blue: 0.194))
                    .offset(x: 87 , y: -48)
                    .padding(.vertical, 1)
                    .padding(.horizontal, 50)
                    .background(
                        Color.white.opacity(1.0)
                            .cornerRadius(25)
                            .shadow(color: Color.yellow, radius: 10, x: 0, y: 5)
                            .offset(x:87 , y: -47)

                    )
                                 
                                 Spacer()
                                 
                                 TextEditor(text: $notesText)
                                     .padding()
                                     .frame(height: 670)
                                     .background(Color.white.opacity(0.1))
                                     .cornerRadius(10)
                                     .overlay(
                                         RoundedRectangle(cornerRadius: 10)
                                             .stroke(Color.white.opacity(0.5), lineWidth: 1)
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
