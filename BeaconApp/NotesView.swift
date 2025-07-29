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
        VStack {
            Text("Journaling")
            Spacer()
            ZStack(alignment: .topLeading) {
                if notesText.isEmpty {
                    Text("Type your notes here...")
                        .foregroundColor(.gray)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                TextEditor(text: $notesText)
                    .padding(4)
                    .background(Color.white)
            }
            .frame(height: 700)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.gray, lineWidth: 3)
            )
            .padding()
        }
  }
}
#Preview {
    NotesView()
}
