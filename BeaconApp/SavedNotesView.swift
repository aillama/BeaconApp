//
//  SavedNotesView.swift
//  BeaconApp
//
//  Created by Kate MacGuire on 7/30/25.
//

import SwiftUI

struct SavedNotesView: View {
    @Binding var notes: [Note]

    var body: some View {
        List {
            ForEach(notes) { note in
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
            .onDelete(perform: deleteNote)
        }
        .navigationTitle("Saved Notes")
        .toolbar {
            EditButton()
        }
    }

    func deleteNote(at offsets: IndexSet) {
        notes.remove(atOffsets: offsets)
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(encoded, forKey: "savedNotes")
        }
    }
}



