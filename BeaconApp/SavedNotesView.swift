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
                    .foregroundColor(Color(.black))
                    .font(.title3)
                    .italic()
                    .padding()
            } else {
                List {
                    ForEach(Array(notes.enumerated()), id: \.element.id) { index, note in
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
                                toggleFavorite(at: index)
                            }) {
                                Image(systemName: note.isFavorite ? "star.fill" : "star")
                                    .foregroundColor(note.isFavorite ? .yellow : .gray)
                                    .imageScale(.large)
                            }
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

    func deleteNote(at offsets: IndexSet) {
        notes.remove(atOffsets: offsets)
        saveNotes()
    }

    func toggleFavorite(at index: Int) {
        notes[index].isFavorite.toggle()
        saveNotes()
    }

    private func saveNotes() {
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(encoded, forKey: "savedNotes")
        }
    }
}




