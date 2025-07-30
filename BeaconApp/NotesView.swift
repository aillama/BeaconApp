//
//  NotesView.swift
//  BeaconApp
//
//  Created by Kate MacGuire on 7/29/25.
//

import SwiftUI


struct Note: Identifiable, Codable {
    let id: UUID
    var title: String
    var text: String
}


struct NotesView: View {
    @State private var noteTitle = ""
    @State private var notesText = ""
    @State private var savedNotes: [Note] = []
    @State private var navigateToSaved = false

    var body: some View {
        NavigationView {
            ZStack {
                RadialGradient(colors: [
                    Color("lightpink").opacity(9.9),
                    Color("lightyellow").opacity(9.9),
                    Color("lightgreen").opacity(8.9),
                    Color("lightblue").opacity(8.9),
                    Color("lightpurple").opacity(9.9),
                ], center: .topLeading, startRadius: 845, endRadius: 111)
                .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 16) {
                    Text("Journal 🌟")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 60)
                        .frame(maxWidth: .infinity, alignment: .center)

                    Text("beacon")
                        .font(.system(size: 34, weight: .heavy, design: .rounded))
                        .foregroundColor(Color("lightpurple"))
                        .padding(.vertical, 8)
                        .padding(.horizontal, 40)
                        .background(
                            Color.white.opacity(0.5)
                                .cornerRadius(25)
                                .shadow(color: Color.white.opacity(0.5), radius: 10, x: 0, y: 5)
                        )
                        .frame(maxWidth: .infinity, alignment: .center)

                    ScrollView {
                        VStack(alignment: .leading, spacing: 16) {
                            TextField("Type title here...", text: $noteTitle)
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                                .padding()
                                .background(Color.white.opacity(0.2))
                                .cornerRadius(10)
                                .padding(.horizontal)

                            TextEditor(text: $notesText)
                                .padding()
                                .frame(minHeight: 300)
                                .background(Color.white.opacity(0.1))
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.white.opacity(0.5), lineWidth: 1.5)
                                )
                                .foregroundColor(.black)
                                .padding(.horizontal)

                            Button(action: saveNote) {
                                Text("Save Note")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.green.opacity(0.8))
                                    .cornerRadius(12)
                            }
                            .padding(.horizontal)

                            // ✅ Pass binding to SavedNotesView
                            NavigationLink(destination: SavedNotesView(notes: $savedNotes), isActive: $navigateToSaved) {
                                EmptyView()
                            }

                            Button(action: {
                                loadNotes()
                                navigateToSaved = true
                            }) {
                                Text("View All Notes")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.purple.opacity(0.8))
                                    .cornerRadius(12)
                            }
                            .padding(.horizontal)
                            .padding(.bottom, 40)
                        }
                    }
                }
                .padding(.top, 10)
            }
            .navigationBarHidden(true)
            .onAppear(perform: loadNotes)
        }
    }

    
    func saveNote() {
        let newNote = Note(id: UUID(), title: noteTitle, text: notesText)
        savedNotes.append(newNote)
        if let encoded = try? JSONEncoder().encode(savedNotes) {
            UserDefaults.standard.set(encoded, forKey: "savedNotes")
        }
        noteTitle = ""
        notesText = ""
    }

    
    func loadNotes() {
        if let data = UserDefaults.standard.data(forKey: "savedNotes"),
           let decoded = try? JSONDecoder().decode([Note].self, from: data) {
            savedNotes = decoded
        }
    }
}


#Preview {
    NotesView()
}



