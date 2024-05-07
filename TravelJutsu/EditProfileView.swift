import SwiftUI

struct EditProfileView: View {
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 60) {
                    Section(title: "Account Info") {
                        ProfileItem(icon: "person.fill", title: "Your Photo", description: "Adding a profile picture makes your profile more personalized.")
                        ProfileItem(icon: "person.crop.circle.fill.badge.plus", title: "Gender", description: "Sir", action: {})
                        ProfileItem(icon: "person.crop.circle.fill", title: "Name", description: "First Last", action: {})
                        ProfileItem(icon: "envelope.fill", title: "Email", description: "youremail@yahoo.co.id", action: {})
                        ProfileItem(icon: "phone.fill", title: "Phone Number", description: "(+62) ****", action: {})
                    }
                    
                    Button(action: {
                        // Handle save changes action
                    }) {
                        Text("Save Changes")
                            .font(.custom("Poppins-Medium", size: 18))
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(20)
                            Spacer()
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct Section<Content: View>: View {
    let title: String
    let content: Content
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.custom("Poppins-Bold", size: 24))
                .foregroundColor(.white)
                .padding(.bottom, 10)
            content
        }
    }
}

struct ProfileItem: View {
    let icon: String
    let title: String
    let description: String
    var action: (() -> Void)?
    
    var body: some View {
        Button(action: {
            if let action = action {
                action()
            }
        }) {
            HStack(spacing: 15) {
                Image(systemName: icon)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
                    .background(
                        Circle()
                            .fill(Color.white.opacity(0.2))
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 10)
                    )
                
                VStack(alignment: .leading, spacing: 5) {
                    Text(title)
                        .font(.custom("Poppins-Medium", size: 18))
                        .foregroundColor(.white)
                    Text(description)
                        .font(.custom("Poppins-Light", size: 14))
                        .foregroundColor(.white)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 20)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white.opacity(0.2))
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
