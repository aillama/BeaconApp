import SwiftUI

struct SavedNotesView: View {
    @Binding var notes: [Note]
    @Environment(\.presentationMode) var presentationMode
    @State private var isEditing = false

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
                    .foregroundColor(Color(red: 0.38, green: 0.42, blue: 0.60))
                    .font(.title3)
                    .fontWeight(.semibold)
                    .italic()
                    .padding()
            } else {
                List {
                    ForEach(sortedNotes, id: \.id) { note in
                        HStack(alignment: .top) {
                            VStack(alignment: .leading, spacing: 8) {
                                Text(note.title)
                                    .font(.headline)
                                    .foregroundColor(Color(red: 0.18, green: 0.05, blue: 0.25))

                                Text(note.text)
                                    .font(.subheadline)
                                    .foregroundColor(Color(red: 0.38, green: 0.42, blue: 0.60))
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
                        .listRowInsets(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
                        .listRowBackground(Color.clear)
                    }
                    .onDelete(perform: deleteNote)
                }
                .listStyle(PlainListStyle())
                .background(Color.clear)
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            // Custom Home button
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack(spacing: 4) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color(red: 0.18, green: 0.05, blue: 0.25))

                        Text("Home")
                            .foregroundColor(Color(red: 0.18, green: 0.05, blue: 0.25))
                            .fontWeight(.semibold)
                    }
                    .padding(.top, 10)
                }
            }

            // Custom title
            ToolbarItem(placement: .principal) {
                Text("Saved Notes")
                    .foregroundColor(Color(red: 0.18, green: 0.05, blue: 0.25))
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 10)
            }

            // Custom Edit button
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    isEditing.toggle()
                }) {
                    Text(isEditing ? "Done" : "Edit")
                        .foregroundColor(Color(red: 0.18, green: 0.05, blue: 0.25))
                        .fontWeight(.semibold)
                }
                .padding(.top, 10)
            }
        }
        .environment(\.editMode, .constant(isEditing ? .active : .inactive))
    }

    var sortedNotes: [Note] {
        notes.sorted { $0.isFavorite && !$1.isFavorite }
    }

    func toggleFavorite(_ note: Note) {
        if let index = notes.firstIndex(where: { $0.id == note.id }) {
            notes[index].isFavorite.toggle()
            saveNotes()
        }
    }

    func deleteNote(at offsets: IndexSet) {
        notes.remove(atOffsets: offsets)
        saveNotes()
    }

    private func saveNotes() {
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(encoded, forKey: "savedNotes")
        }
    }
}
