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
    ] //this is the random quote array
    
    @State private var currentQuote = ""
    @State private var showQuote = false
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 20) {
                Text("beacon")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding(.horizontal)
                
                Text("Feeling overwhelmed? Let's take a moment.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing:15){
                    Text("**You're doing your best.** Take everything one step at a time.")
                        .font(.body)
                        .foregroundColor(.primary)
                        .padding(.bottom)
                    
                    Text("5 Quick Tips:")
                        .font(.headline)
                    
                    Text("🚶‍♀️  Take a short walk outside")
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("📵  Step away from your screen for 5")
                        Text("       minutes")
                    }
                    
                    Text("🏃‍♀️  Do some light exercise")
                    Text("🌟  Write a list of positive affirmations")
                    
                    
                        Text("🧘  Listen to calming music or sounds")
                    
                }
                
                
                .padding()
                .background(Color(.systemGray4))
                .cornerRadius(10)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .frame(alignment:.center)
                
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Quote of the Moment")
                        .font(.headline)
                        
                  
                    Text(currentQuote)
                        .font(.body)
                        .italic()
                        .padding(.bottom, 10)
                   
                    
                    Button("Get inspired") {
                        showQuote = false
                        withAnimation(.easeIn(duration: 0.3)){
                            currentQuote = quotes.randomElement() ?? ""
                            showQuote = true
                        }
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding(.horizontal)
                .onAppear {
                    currentQuote = quotes.randomElement() ?? ""
                }
                
                
                
                VStack(spacing:15){
                    Text("Need to write something down?")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
                
                Text("Need more support?")
                    .padding()
                    .frame(maxWidth:.infinity)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                
            }
        }
    }
}
#Preview {
    StressedPage()
}
