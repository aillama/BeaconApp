import SwiftUI

struct immediateHelpPage: View {
    var body: some View {
        NavigationStack {
            NavigationStack { // nav stack opener
                  ZStack { //zstack opener
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
                    VStack(spacing: 30) { //large vstack opener
                        
                        NavigationLink (destination: Home()) {
                            Text("beacon")
                                .font(.system(size: 44, weight: .heavy, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.vertical, 20)
                                .padding(.horizontal, 60)
                                .background(
                                    Color(red: 0.45, green: 0.25, blue: 0.55)
                                        .cornerRadius(25)
                                        .shadow(color: Color(red: 0.55, green: 0.45, blue: 0.15).opacity(0.5), radius: 10, x: 0, y: 5)
                                )
                        }
                      VStack() {
                        Text("Need immediate help? You are not")
                          .font(.title2)
                          .fontWeight(.bold)
                          .foregroundColor(.black)
                          .padding(.horizontal)
                          .padding(.top, 12)
                        Text("alone. We're here to help you.")
                          .font(.title2)
                          .fontWeight(.bold)
                          .foregroundColor(.black)
                          .padding(.horizontal)
                      }
                      VStack(spacing: 10) { //box vstack
                        Text("📞 Crisis Hotline: Dial 988")
                          .font(.title3)
                          .fontWeight(.bold)
                          .multilineTextAlignment(.center)
                          .padding(.vertical, 12)
                        Text("📱 Text Support: 741741")
                          .font(.title3)
                          .fontWeight(.bold)
                          .multilineTextAlignment(.center)
                          .padding(.bottom, 12)
                        Text("☎️ Disaster Distress Helpline")
                          .font(.title3)
                          .fontWeight(.bold)
                          .multilineTextAlignment(.center)
                        Text("🎥 Video Call for ASL Users")
                          .font(.title3)
                          .fontWeight(.bold)
                          .multilineTextAlignment(.center)
                          .padding(.bottom, 12)
                        Text("📞 TrevorLifeline: 1-866-488-7386")
                          .font(.title3)
                          .fontWeight(.bold)
                          .multilineTextAlignment(.center)
                          .padding(.bottom, 12)
                        Text("🖥️ National Institute of Mental")
                          .font(.title3)
                          .fontWeight(.bold)
                          .multilineTextAlignment(.center)
                        Text("🏥 Health Website (NIMH)")
                          .font(.title3)
                          .fontWeight(.bold)
                          .multilineTextAlignment(.center)
                          .padding(.bottom, 12)
                      }
                      .padding()
                      .background(Color(.white).opacity(0.8))
                      .cornerRadius(15)
                      .padding(.horizontal)
                      .padding([.top], 15)
                      .padding(.bottom, 20)
                      VStack(spacing: 30) { //navlink v stack opener
                        NavigationLink(destination: NotesView()){
                          Text("Need to write something down?")
                            .font(.headline)
                            .padding()
                            .background(Color.white.opacity(0.9))
                            .foregroundColor(Color(red: 0.45, green: 0.25, blue: 0.55))
                            .cornerRadius(15)
                            .padding(.horizontal)
                        }
                        Text("Remember, you are not alone")
                          .bold()
                          .foregroundStyle(Color(.black))
                          .italic()
                      } // navlink vstack closure
                      .padding(.bottom, 40)
                    } //large vstack closure
                  } //ZStack closure
                } //navigation stack closure
            .navigationBarBackButtonHidden(true)
// VStack end
            } // ZStack end
        } // NavigationStack end
    }


#Preview {
    immediateHelpPage()
        .environmentObject(sharedData())
}
