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
                                    
                                ) .padding(.top, 15)
                        }
                      VStack() {
                        Text("Need immediate help? We're ")
                          .font(.title2)
                          .fontWeight(.bold)
                          .foregroundColor(Color(red: 0.10, green: 0.05, blue: 0.12))
                          .padding(.horizontal)
                          .padding(.top, 10)
                        Text("here to help you.")
                          .font(.title2)
                          .fontWeight(.bold)
                          .foregroundColor(.black)
                          .padding(.horizontal)
                      } .multilineTextAlignment(.center)
                            .padding(.bottom, -2)
                        VStack(spacing: 10) { //box vstack
                            Text("📞 Crisis Hotline: Dial 988")
                                .font(.title3)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 15)
                                
                            Text("📱 Text Support: 741741")
                                .font(.title3)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 15)
                            
                            VStack{
                                Text("☎️ Disaster Distress Helpline")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                
                                Text("   Video Call for ASL Users")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .padding(.bottom, 15)
                            }
                            Text("📞 TrevorLifeline: 1-866-488-7386")
                                .font(.title3)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .padding(.bottom, 15)
                            VStack{
                                Text("🖥️ National Institute of Mental")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                Text("Health Website (NIMH)")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.center)
                                    .padding(.bottom, 15)
                            }
                        }
                      .padding()
                      .background(Color(.white).opacity(0.9))
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
                            .foregroundColor( Color(red: 0.10, green: 0.05, blue: 0.12))
                            .cornerRadius(15)
                            .padding(.horizontal)
                        }
                        Text("Remember, you are not alone")
                          .bold()
                          .foregroundStyle(Color(red: 0.10, green: 0.05, blue: 0.12))
                          .italic()
                      } // navlink vstack closure
                      .padding(.bottom, 30)
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
