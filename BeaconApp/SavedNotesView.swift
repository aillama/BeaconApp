import SwiftUI

struct SavedNotesView: View {
    @Binding var notes: [Note]

    var body: some View {
        ZStack {
            RadialGradient(colors: [
                Color("lightpink").opacity(0.9),
                Color("lightyellow").opacity(0.9),
                Color("lightgreen").opacity(0.9),
                Color("lightblue").opacity(0.9),
                Color("lightpurple").opacity(0.9),
            ], center: .topLeading, startRadius: 845, endRadius: 111)
            .ignoresSafeArea()

            if notes.isEmpty {
                Text("No saved notes yet.")
                    .foregroundColor(.black)
                    .font(.title3)
                    .italic()
                    .padding()
            } else {
                List {
                    ForEach(sortedNotes, id: \.id) { note in
                        HStack(alignment: .top) {
                            VStack(alignment: .leading, spacing: 8) {
                                Text(note.title)
                                    .font(.headline)
                                    .foregroundColor(Color(red: 0.28, green: 0.32, blue: 0.48))

                                Text(note.text)
                                    .font(.subheadline)
                                    .foregroundColor(Color(red: 0.45, green: 0.45, blue: 0.50))
                                    .lineLimit(3)
                            }
                            Spacer()

                            Button(action: {
                                toggleFavorite(note)
                            }) {
                                Image(systemName: note.isFavorite ? "star.fill" : "star")
                                    .resizable()
                                    .foregroundColor(note.isFavorite ? .yellow : .gray)
                                    .frame(width: 24, height: 24)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                        .padding()
                        .background(Color.white.opacity(0.85))
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                        .listRowBackground(Color.clear)
                        .listRowInsets(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                    }
                    .onDelete(perform: deleteNote)
                }
                .listStyle(PlainListStyle())
                .background(Color.clear)
            }
        }
        .navigationTitle("Saved Notes")
        .toolbar {
            EditButton()
        }
    }

    /// Sorts favorites to the top
    var sortedNotes: [Note] {
        notes.sorted { $0.isFavorite && !$1.isFavorite }
    }

    /// Toggle favorite status for a given note
    func toggleFavorite(_ note: Note) {
        if let index = notes.firstIndex(where: { $0.id == note.id }) {
            notes[index].isFavorite.toggle()
            saveNotes()
        }
    }

    /// Delete selected notes
    func deleteNote(at offsets: IndexSet) {
        notes.remove(atOffsets: offsets)
        saveNotes()
    }

    /// Save notes to UserDefaults
    private func saveNotes() {
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(encoded, forKey: "savedNotes")
        }
    }
}






