import SwiftUI

struct SupportView: View {
    var body: some View {
        ZStack {
            // Background gradient
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 40) {
                    // Title
                    Text("Hi Adams, how can we help?")
                        .font(.custom("Poppins-Medium", size: 22))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    // Select help topic
                    Text("Select a help topic:")
                        .font(.custom("Poppins-Medium", size: 18))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    // Help topics buttons
                    HStack(spacing: 20) {
                        HelpTopicButton(imageName: "questionmark.circle.fill", text: "FAQs")
                        HelpTopicButton(imageName: "message.fill", text: "Contact Us")
                        HelpTopicButton(imageName: "person.3.fill", text: "Community")
                    }
                }
                .padding()
            }
        }
    }
}

struct HelpTopicButton: View {
    let imageName: String
    let text: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            Text(text)
                .font(.custom("Poppins-Medium", size: 16))
                .foregroundColor(.white)
        }
        .padding(20)
        .background(Color.white.opacity(0.2))
        .clipShape(Circle())
        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
