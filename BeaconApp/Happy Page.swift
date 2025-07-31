import SwiftUI

struct HappyPage: View {
    
    let quotes = [
        "Happiness is when your thoughts, words, and actions align.",
        "Enjoy the little things; they are the big things.",
        "Happiness is not by chance, but by choice.",
        "Gratitude turns what we have into enough.",
        "Be happy for this moment. This moment is your life.",
        "A happy heart makes a cheerful face.",
        "Let your happiness be contagious."
    ]
    
    @State private var currentQuote = ""
    @State private var showQuote = false
    
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(red: 0.98, green: 0.95, blue: 0.85),
                        Color(red: 0.96, green: 0.84, blue: 0.50),
                        Color(red: 0.90, green: 0.70, blue: 0.30)
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
                                    Color(red: 0.55, green: 0.45, blue: 0.15).opacity(0.9)
                                        .cornerRadius(25)
                                        .shadow(color: Color(red: 0.55, green: 0.45, blue: 0.15).opacity(0.5), radius: 10, x: 0, y: 5)
                                    
                                    
                                )
                                .padding(.top, 30)
                                .frame(maxWidth: .infinity)
                        }
                        
                        
                        
                        
                        Text("Let's keep the good energy flowing!")
                            .font(.system(.body, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.35, green: 0.30, blue: 0.10))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 30)
                        
                        
                        VStack(alignment: .center, spacing: 15) {
                            Text("**Your happiness brightens the world.** Keep shining!")
                                .font(.body)
                                .multilineTextAlignment(.center)
                            
                            
                            Text("5 Quick Tips:")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .center)
                            
                            
                            Text("🍫   Treat yourself to something you love")
                            VStack(alignment: .leading, spacing: 0) {
                                Text("🥳    Write down why you're feeling happy ")
                                Text("         to remember the moment")
                                
                            }
                            
                            Text("😊   Share a kind message to someone")
                            Text("💌   Connect with your loved ones")
                            
                            Text("💖   Express gratitude")
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 0.98, green: 0.96, blue: 0.90))
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                        .padding(.horizontal)
                        
                        
                        VStack(spacing: 10) {
                            Text("Quote of the Moment")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.40, green: 0.35, blue: 0.15))
                            
                            
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
                                    .foregroundColor(Color(red: 0.48, green: 0.39, blue: 0.13))
                                
                                
                                
                                
                                    .cornerRadius(15)
                                    .padding(.horizontal)
                                    .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 4)
                            }
                            
                            
                            
                            VStack(spacing: 15) {
                                NavigationLink(destination: NotesView()) {
                                    Text("Need to write something down?")
                                        .font(.headline)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.white.opacity(0.9))
                                        .foregroundColor(Color(red: 0.48, green: 0.39, blue: 0.13))
                                    
                                    
                                    
                                        .cornerRadius(15)
                                        .padding(.horizontal)
                                }
                                
                                
                                
                                Text("Need more support?")
                                    .font(.headline)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.white.opacity(0.9))
                                    .foregroundColor(Color(red: 0.48, green: 0.39, blue: 0.13))
                                
                                
                                
                                    .cornerRadius(15)
                                    .padding(.horizontal)
                                    .multilineTextAlignment(.center)
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
    HappyPage()
}


