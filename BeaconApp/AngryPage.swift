import SwiftUI

struct AngryPage: View {
    
    let quotes = [
        "Anger is like flowing water; there’s nothing wrong with it as long as you let it flow.",
        "You are not your anger. You are the one noticing it, feeling it, and learning from it.",
        "Feeling angry doesn’t make you a bad person. It means you’re human.",
        "Anger is a signal, not a solution.",
        "You’re allowed to pause and take space when things feel too big.",
        "Feelings are just visitors. Let them come and leave.",
        "Anger is not the enemy. It is a compass."
    ]
    
    @State private var currentQuote = ""
    @State private var showQuote = false
    
    var body: some View {
        
        NavigationStack {
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.98, green: 0.87, blue: 0.90),
                    Color(red: 0.91, green: 0.70, blue: 0.75),
                    Color(red: 0.74, green: 0.48, blue: 0.53)
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
                                Color(red: 0.40, green: 0.18, blue: 0.22).opacity(0.9)
                                    .cornerRadius(25)
                                    .shadow(color: Color(red: 0.40, green: 0.18, blue: 0.22).opacity(0.5), radius: 10, x: 0, y: 5)
                            )
                            .padding(.top, 30)
                            .frame(maxWidth: .infinity)
                    }
                    
                    
                    
                    
                    Text("Let's cool down together!")
                        .font(.system(.body, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.18, green: 0.10, blue: 0.12))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
                    
                    VStack(alignment: .center, spacing: 15) {
                        Text("**Your feelings are valid.** Let's handle them safely!.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("5 Quick Tips:")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        
                        Text("🚪   Remove yourself from the situation")
                        VStack(alignment: .leading, spacing: 0) {
                            Text("📱   Write an unsent letter to what's ")
                            Text("         bothering you")
                            
                        }
                        
                        Text("🗣️   Say and describe what you're feeling")
                        Text("🧊   Cool down and sip water slowly")
                        
                        Text("🎯   Do something that requires focus")
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.97, green: 0.91, blue: 0.93))
                    .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                    .padding(.horizontal)
                    
                    
                    VStack(spacing: 10) {
                        Text("Quote of the Moment")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.15, green: 0.07, blue: 0.08))
                        
                        
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
                                .foregroundColor(Color(red: 0.55, green: 0.25, blue: 0.35))
                            
                            
                                .cornerRadius(15)
                                .padding(.horizontal)
                                .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 4)
                        }
                        
                        
                        
                        VStack(spacing: 15) {
                            
                            NavigationLink (destination: NotesView()) {
                                Text("Need to write something down?")
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.white.opacity(0.9))
                                    .foregroundColor(Color(red: 0.55, green: 0.25, blue: 0.35))
                                
                                
                                    .cornerRadius(15)
                                    .padding(.horizontal)
                            }
                            
                            
                            Text("Need more support?")
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white.opacity(0.9))
                                .foregroundColor(Color(red: 0.55, green: 0.25, blue: 0.35))
                            
                            
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
        .navigationBarBackButtonHidden(true)
        }
    }
}
#Preview {
    AngryPage()
}

