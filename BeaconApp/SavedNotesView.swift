//
//  SavedNotesView.swift
//  BeaconApp
//
//  Created by Kate MacGuire on 7/30/25.
//

import SwiftUI

struct SavedNotesView: View {
    var notes: [Note]

    var body: some View {
        List(notes) { note in
            VStack(alignment: .leading, spacing: 4) {
                Text(note.title)
                    .font(.headline)
                Text(note.text)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }
            .padding(.vertical, 8)
        }
        .navigationTitle("Saved Notes")
    }
}

// ✅ Preview for SavedNotesView
#Preview {
    SavedNotesView(notes: [
        Note(id: UUID(), title: "Sample 1", text: "This is the first note."),
        Note(id: UUID(), title: "Sample 2", text: "This is another sample note.")
    ])
}

