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
        VStack(alignment: .leading) {
            Text("Journaling")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
                .frame(maxWidth: .infinity, alignment: .center)

            Spacer()

            ZStack(alignment: .topLeading) {
                if notesText.isEmpty {
                    Text("Type your notes here...")
                        .foregroundColor(.gray)
                        .padding(8)
                }

                TextEditor(text: $notesText)
                    .padding(8)
                    .background(Color.white)
            }
            .frame(height: 700)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray.opacity(0.5), lineWidth: 1)
            )
        }
        .padding()
        .background(Color(UIColor.systemGroupedBackground))
    }
}


#Preview {
    NotesView()
}
