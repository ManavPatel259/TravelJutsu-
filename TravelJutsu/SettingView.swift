import SwiftUI

struct SettingView: View {
   
    var body: some View {
        ZStack {
            // Background gradient
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 20) {
                    // Title
                    Text("Settings")
                        .font(.custom("Poppins-Bold", size: 24))
                        .foregroundColor(.black)
                    
                    // Setting options
                    SettingOptionButton(title: "Account", action: {
                        // Action for Account setting
                    })
                    SettingOptionButton(title: "Password", action: {
                        // Action for Password setting
                    })
                    SettingOptionButton(title: "Security", action: {
                        // Action for Security setting
                    })
                    SettingOptionButton(title: "Language", action: {
                        // Action for Language setting
                    })
                    SettingOptionButton(title: "Currency", action: {
                        // Action for Currency setting
                    })
                    SettingOptionButton(title: "Notifications", action: {
                        // Action for Notifications setting
                    })
                    SettingOptionButton(title: "Location", action: {
                        // Action for Location setting
                    })
                    SettingOptionButton(title: "Sign Out", action: {
                        // Action for Sign Out setting
                    })
                }
                .padding()
            }
        }
    }
}

struct SettingOptionButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .font(.custom("Poppins-Medium", size: 18))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue.opacity(0.8))
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
        })
        .buttonStyle(PlainButtonStyle())
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
