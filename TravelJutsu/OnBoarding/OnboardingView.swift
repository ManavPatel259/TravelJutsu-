import SwiftUI

struct OnboardingView: View {
    @State private var isRedirected: Bool = false
    
    var body: some View {
//        NavigationView {
            ZStack {
                Color.blue
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Image("Booking")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    RoundedRectangle(cornerRadius: 45)
                        .fill(Color.white)
                        .frame(height: 420)
                        .offset(y: 35)
                        .overlay(
                            VStack {
                                Text("Plan Your Trip")
                                    .font(.title)
                                    .bold()
                                    .padding()
                                
                                Text("Create your dream trip with ease. Choose a destination, find the perfect place to stay, and create an itinerary that suits your preferences.")
                                    .font(.body)
                                    .padding(.horizontal)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 318.0, alignment: .top)
                               
                                NavigationLink(destination: SecondOnBoardView(), isActive: $isRedirected) {
                                        EmptyView()
                                }
                                
                                Button(action: {
                                    navigateToSecondOnBoardView()
                                }) {
                                    Text("Next")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.black)
                                        .cornerRadius(40)
                                    }
                                .padding()
                                .offset(y: 60)
                                
                                HStack(alignment: .top, spacing: 18.0) {
                                    Circle()
                                        .foregroundColor(.clear)
                                        .frame(width: 12.0, height: 12.0)
                                        .background(Color(red: 26.0 / 255.0, green: 142.0 / 255.0, blue: 234.0 / 255.0))
                                    Circle()
                                        .foregroundColor(.clear)
                                        .frame(width: 12.0, height: 12.0)
                                        .background(Color(white: 149.0 / 255.0))
                                        .onTapGesture {
                                            navigateToSecondOnBoardView()
                                        }
                                    Circle()
                                        .foregroundColor(.clear)
                                        .frame(width: 12.0, height: 12.0)
                                        .background(Color(white: 149.0 / 255.0))
                                }
                                .padding(.bottom)
                                .offset(y: 60)
                            }
                        )
                }
            }
        }
    func navigateToSecondOnBoardView() {
            isRedirected = true
        }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
