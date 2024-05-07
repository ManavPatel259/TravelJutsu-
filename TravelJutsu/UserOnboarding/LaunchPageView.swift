import SwiftUI

struct LaunchPageView: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("JourneyJutsu")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 430.0, height: 494.0)
                    .edgesIgnoringSafeArea(.all)
                
                Rectangle()
                    .foregroundColor(.clear)
            }
            .background(Color(red: 248.0 / 255.0, green: 247.0 / 255.0, blue: 244.0 / 255.0))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isActive = true
                }
            }
            .background(
                NavigationLink(
                    destination: OnboardingView(),
                    isActive: $isActive,
                    label: { EmptyView() }
                )
                .hidden()
            )
        }
        .edgesIgnoringSafeArea(.all)
         
        }
    }

struct LaunchPageView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchPageView()
    }
}

