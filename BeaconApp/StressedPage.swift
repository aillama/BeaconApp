import SwiftUI

struct StressedPage: View {
    
    let quotes = [
        "Don't worry about things that you can't control.",
        "You can do anything, but not everything.",
        "The greatest weapon against stress is our ability to choose one thought over another.",
        "Don't worry about things you can't control.",
        "This too shall pass.",
        "Breathe in calm, breathe out stress.",
        "When the going gets tough, the tough gets going."
    ]
    
    @State private var currentQuote = ""
    @State private var showQuote = false
    //@EnvironmentObject var sharedData: sharedData
    
    var body: some View {
    
        NavigationStack{
        
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.70, green: 0.87, blue: 0.70),
                           Color(red: 0.50, green: 0.75, blue: 0.50),
                           Color(red: 0.35, green: 0.60, blue: 0.35)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .center, spacing: 25) {
                    
                    NavigationLink (destination: Home()) {
                        Text("beacon")
                            .font(.system(size: 44, weight: .heavy, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.vertical, 15)
                            .padding(.horizontal, 60)
                            .background(
                                Color.black.opacity(0.6)
                                    .cornerRadius(25)
                                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                            )
                            .padding(.top, 30)
                            .frame(maxWidth: .infinity)
                    }
                    
                    Text("Feeling overwhelmed? Let's take a moment.")
                        .font(.system(.body, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.05, green: 0.07, blue: 0.1))
                        .multilineTextAlignment(.center)
                        .padding()
                    VStack(alignment: .center, spacing: 15) {
                        VStack(alignment: .center, spacing: 15) {
                            Text("**You matter.** This feeling won't last forever.")
                                .font(.body)
                                .multilineTextAlignment(.center)
                            
                            Text("5 Quick Tips:")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .center)
                            
                            
                            VStack(alignment: .leading, spacing: 0) {
                                Text("📵  Step away from your screen for 5")
                                Text("       minutes")
                            }
                            
                            Text("🏃‍♀️   Do some light exercise")
                            Text("🌟   Write a list of positive affirmations")
                            Text("🧘   Listen to calming music or sounds")
                            Text("🕯️   Try a mindfulness exercise")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.87, green: 0.94, blue: 0.87))
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                        .padding(.horizontal)
                        
                        VStack(spacing: 10) {
                            Text("Quote of the Moment")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.05, green: 0.07, blue: 0.1))
                            
                            
                            Text(currentQuote)
                                .font(.body)
                                .italic()
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                                .opacity(showQuote ? 1 : 0)
                                .animation(.easeIn(duration: 0.5), value: showQuote)
                            
                            Button(action: {
                                showQuote = false
                                withAnimation(.easeIn(duration: 0.3)) {
                                    currentQuote = quotes.randomElement() ?? ""
                                    showQuote = true
                                }
                            }) {
                                Text("Get another quote")
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.white.opacity(0.9))
                                    .foregroundColor(Color(red: 0.25, green: 0.45, blue: 0.3))
                                    .cornerRadius(15)
                                    .padding(.horizontal)
                                    .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 4)
                            }
                            
                            
                            
                            VStack {
                                
                                NavigationLink(destination: NotesView()) {
                                    Text("Need to write something down?")
                                        .font(.headline)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.white.opacity(0.9))
                                        .foregroundColor(Color(red: 0.25, green: 0.45, blue: 0.3))
                                        .cornerRadius(15)
                                        .padding(.horizontal)
                                        .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 4)
                                }
                                
                                
                                Text("Need more support?")
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.white.opacity(0.9))
                                    .foregroundColor(Color(red: 0.25, green: 0.45, blue: 0.3))
                                
                                    .cornerRadius(15)
                                    .padding(.horizontal)
                                    .multilineTextAlignment(.center)
                                
                            }
                        }
                        .padding()
                        .onAppear {
                            currentQuote = quotes.randomElement() ?? ""
                            showQuote = true
                        }
                    }
                    }
                }
            }
        .navigationBarBackButtonHidden(true)

        }
    }
}

#Preview {
    NavigationStack{
        StressedPage()
            //.environmentObject(sharedData()) // <- Inject dummy data for preview (from ChatGPT)
    }
}


