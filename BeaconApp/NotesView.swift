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
    var isFavorite: Bool = false // Added for favorite toggle
}

struct NotesView: View {
    @State private var noteTitle = ""
    @State private var notesText = ""
    @State private var savedNotes: [Note] = []
    @State private var navigateToSaved = false

    var body: some View {
        NavigationStack {
            ZStack {
                RadialGradient(colors: [
                    Color("lightpink").opacity(0.9),
                    Color("lightyellow").opacity(0.9),
                    Color("lightgreen").opacity(0.9),
                    Color("lightblue").opacity(0.9),
                    Color("lightpurple").opacity(0.9),
                ], center: .topLeading, startRadius: 845, endRadius: 111)
                .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 16) {
                    NavigationLink (destination: Home()) {
                        Text("beacon")
                            .font(.system(size: 44, weight: .heavy, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 60)
                            .background(
                                Color(red: 0.30, green: 0.60, blue: 0.62)
                                    .cornerRadius(25)
                                    .shadow(color: Color(red: 0.55, green: 0.45, blue: 0.15).opacity(0.5), radius: 10, x: 0, y: 5)
                            )
                            .frame(maxWidth: .infinity, alignment: .center)
                    }

                    Text("Journal 📝")
                        .font(.largeTitle)
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.38, green: 0.42, blue: 0.60))
                        .padding(.top, 10)
                        .frame(maxWidth: .infinity, alignment: .center)

                    ScrollView {
                        VStack(alignment: .leading, spacing: 16) {
                            TextField("Type title here...", text: $noteTitle)
                                .font(.system(size: 24, weight: .bold, design: .rounded))
                                .padding()
                                .background(Color.white)
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
                                    .background(Color(red: 0.50, green: 0.70, blue: 0.50))
                                    .cornerRadius(12)
                            }
                            .padding(.horizontal)

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
                                    .background(Color(red: 0.60, green: 0.40, blue: 0.78))
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
            .navigationBarBackButtonHidden(true)

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




