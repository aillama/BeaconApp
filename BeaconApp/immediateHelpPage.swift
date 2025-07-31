import SwiftUI

struct immediateHelpPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                RadialGradient(
                    colors: [
                        Color("lightpink"),
                        Color("lightyellow"),
                        Color("lightgreen"),
                        Color("lightblue"),
                        Color("lightpurple")
                    ],
                    center: .topLeading,
                    startRadius: 770,
                    endRadius: 150
                )
                .ignoresSafeArea()

                VStack(spacing: 30) {
                    // Beacon Header
                    Text("beacon")
                        .font(.system(size: 44, weight: .heavy, design: .rounded))
                        .foregroundColor(.white)
                        .padding(.vertical, 15)
                        .padding(.horizontal, 60)
                        .background(
                            Color(red: 0.45, green: 0.25, blue: 0.55)
                                .cornerRadius(25)
                                .shadow(color: Color(red: 0.55, green: 0.45, blue: 0.15).opacity(0.5), radius: 10, x: 0, y: 5)
                        )
                        .padding(.top, 30)

                    // Main Message
                    Text("Need immediate help? You are not alone. We are here for you.")
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.horizontal)

                    // Hotline Info
                    VStack(spacing: 10) {
                        Text("📞 Crisis Hotline: Dial 988")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 12)

                        Text("📱 Text Support: 000-741-1414")
                            .font(.title3)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 12)
                    }
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(15)
                    .padding(.horizontal)

                    Spacer()

                    // Navigation Buttons
                    

                        
                    }
                    .padding(.bottom, 40)
                } // VStack end
            } // ZStack end
        } // NavigationStack end
    }


#Preview {
    immediateHelpPage()
}
