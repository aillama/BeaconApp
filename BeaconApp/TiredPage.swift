import SwiftUI
struct TiredPage: View {
  let quotes = [
    "Sometimes the most productive thing you can do is relax.",
    "It’s okay to slow down and rest. You’re human, not a machine.",
    "Tired is just another word for ‘I tried my best today.'",
    "Rest is not idleness. Sometimes it takes more courage to rest than to push through.",
    "Weariness is often the price we pay for progress.",
    "You don’t have to conquer everything today. Give yourself permission to rest.",
    "Sometimes you just need to rest, not quit."
  ]
  @State private var currentQuote = ""
  @State private var showQuote = false
  var body: some View {
    NavigationStack{
      ZStack {
        LinearGradient(
          gradient: Gradient(colors: [
            Color(red: 0.93, green: 0.84, blue: 0.95),
            Color(red: 0.75, green: 0.58, blue: 0.82),
            Color(red: 0.62, green: 0.40, blue: 0.66)
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
                  Color(red: 0.30, green: 0.14, blue: 0.30).opacity(0.9)
                    .cornerRadius(25)
                    .shadow(color: Color(red: 0.30, green: 0.14, blue: 0.30).opacity(0.5), radius: 10, x: 0, y: 5)
                )
                .padding(.top, 30)
                .frame(maxWidth: .infinity)
            }
            Text("Let's take some time to recharge together!")
              .font(.system(.body, design: .rounded))
              .fontWeight(.bold)
              .foregroundColor(Color(red: 0.15, green: 0.08, blue: 0.18))
              .multilineTextAlignment(.center)
              .padding(.horizontal, 30)
            VStack(alignment: .center, spacing: 15) {
              Text("**It's okay to slow down.** Make sure to take time for yourself and recharge.")
                .font(.body)
                .multilineTextAlignment(.center)
              Text("5 Quick Tips:")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .center)
              Text(":relieved:  Try a 5-minute nap or lie down")
              VStack(alignment: .leading, spacing: 0) {
                Text(":notebook:  Write down what's tiring you and ")
                Text("     come up with a plan to tackle it")
              }
              Text(":walking:  Try some gentle movement")
              Text(":sunny:  Take a break and get some sunlight")
              Text(":woman-gesturing-no:  Cancel plans if needed")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(red: 0.94, green: 0.90, blue: 0.96))
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
                  .foregroundColor(Color(red: 0.45, green: 0.25, blue: 0.55))
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
                    .foregroundColor(Color(red: 0.45, green: 0.25, blue: 0.55))
                    .cornerRadius(15)
                    .padding(.horizontal)
                }
                Text("Need more support?")
                  .font(.headline)
                  .padding()
                  .frame(maxWidth: .infinity)
                  .background(Color.white.opacity(0.9))
                  .foregroundColor(Color(red: 0.45, green: 0.25, blue: 0.55))
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
  TiredPage()
}


