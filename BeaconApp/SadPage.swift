import SwiftUI

struct SadPage: View {
    
    let quotes = [
        "Sadness flies away on the wings of time.",
        "Don't grieve. Anything you lose comes round in another form.",
        "The word happy would lose its meaning if it were not balanced with sadness.",
        "To be wronged is nothing unless you continue to remember it.",
        "Every person has their secret sorrows which the world knows not.",
        "Every situation in life is temporary.",
        "The hard days make you stronger and the bad days help you realize what a good day is."
    ]
    
    @State private var currentQuote = ""
    @State private var showQuote = false
    
    var body: some View {
        
        NavigationStack{
        ZStack {
            
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 0.60, green: 0.77, blue: 0.94),
                    Color(red: 0.45, green: 0.63, blue: 0.82),
                    Color(red: 0.30, green: 0.48, blue: 0.69)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .center, spacing: 25) {
                    
                    NavigationLink (destination: Home()){
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
                    
                    
                    Text("It's okay to feel down sometimes. Take things at your own pace.")
                        .font(.system(.body, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.05, green: 0.07, blue: 0.1))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
                    
                    VStack(alignment: .center, spacing: 15) {
                        Text("**You matter.** This feeling won't last forever.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                        
                        
                        Text("5 Quick Tips:")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        
                        Text("🛌   Take some time for you to rest")
                        Text("📱   Call someone who will support you")
                        Text("🚶‍♀️   Go on a walk outside")
                        Text("🎨   Spend time on an activity you enjoy")
                        Text("✍️   Write about what's bothering you")
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(red: 0.85, green: 0.90, blue: 0.95))
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
                                .foregroundColor(Color(red: 0.2, green: 0.35, blue: 0.6))
                            
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
                                    .foregroundColor(Color(red: 0.2, green: 0.35, blue: 0.6))
                                
                                    .cornerRadius(15)
                                    .padding(.horizontal)
                            }
                            
                            
                            
                            Text("Need more support?")
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.white.opacity(0.9))
                                .foregroundColor(Color(red: 0.2, green: 0.35, blue: 0.6))
                            
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
    SadPage()
}
