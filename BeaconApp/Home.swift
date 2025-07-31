var body: some View {
    NavigationStack {
        ZStack {
            RadialGradient(
                colors: [
                    Color("lightpurple").opacity(0.9),
                    Color("lightblue").opacity(0.9),
                    Color("lightgreen").opacity(0.9),
                    Color("lightyellow").opacity(0.9),
                    Color("lightpink").opacity(0.9)
                ],
                center: .topLeading,
                startRadius: 845,
                endRadius: 111
            )
            .ignoresSafeArea()

            VStack {
                // Title
                Text("beacon")
                    .font(.system(size: 44, weight: .heavy, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 60)
                    .background(
                        Color(red: 0.12, green: 0.06, blue: 0.18)
                            .opacity(0.85)
                            .cornerRadius(25)
                            .shadow(color: Color(red: 0.25, green: 0.15, blue: 0.1).opacity(0.5), radius: 10, x: 0, y: 5)
                    )
                    .frame(maxWidth: .infinity)
                    .padding(.top, 100)

                // Greeting
                HStack {
                    Text("Hello, \(sharedData.name)! How are you today?")
                        .font(.system(size: 24, weight: .semibold, design: .rounded))
                        .foregroundColor(Color(red: 0.10, green: 0.18, blue: 0.12))
                }
                .padding()

                // Mood Buttons
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        moodButton(label: "happy", emoji: "🙂") {
                            showHappyPage = true
                        }
                        .navigationDestination(isPresented: $showHappyPage) {
                            HappyPage()
                        }

                        NavigationLink(destination: SadPage()) {
                            moodButtonContent(label: "sad", emoji: "☹️")
                        }

                        NavigationLink(destination: StressedPage()) {
                            moodButtonContent(label: "stressed", emoji: "😰")
                        }

                        NavigationLink(destination: AngryPage()) {
                            moodButtonContent(label: "angry", emoji: "😡")
                        }

                        NavigationLink(destination: TiredPage()) {
                            moodButtonContent(label: "tired", emoji: "😴")
                        }

                        NavigationLink(destination: immediateHelpPage()) {
                            moodButtonContent(label: "SOS", emoji: "🆘")
                        }
                    }
                    .padding()
                }
            }
        }
    }
}
