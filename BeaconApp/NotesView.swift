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
            Text("Journal ✏️")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
                .frame(maxWidth: .infinity, alignment: .center)

            Spacer()

            ZStack(alignment: .topLeading) {
                if notesText.isEmpty {
                    Text("Type your thoughts, feelings, or anything that you want to remember...")
                        .foregroundColor(.gray)
                        .padding(8)
                }

                TextEditor(text: $notesText)
                    .padding(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray.opacity(3.5))
                    )
            }
            .padding()

            Spacer()
        }
        .padding()
    }
}



#Preview {
    NotesView()
}
