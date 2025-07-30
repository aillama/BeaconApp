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
            }
            .padding()
        }
    }
}


#Preview {
    NotesView()
}
