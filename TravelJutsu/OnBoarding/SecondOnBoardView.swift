import SwiftUI

struct SecondOnBoardView: View {
    @State private var isRedirected: Bool = false
    
    var body: some View {
//        NavigationView {
        ZStack {
            Color.blue
            .edgesIgnoringSafeArea(.all)
                    
            VStack {
                Spacer()
                        
                Image("Traveller with suitcase")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                        
                RoundedRectangle(cornerRadius: 45)
                    .fill(Color.white)
                    .frame(height: 420)
                    .offset(y: 35)
                    .overlay(
            VStack {
                Text("Get the Best Deal")
                    .font(.title)
                    .bold()
                    .padding()
                                    
                Text("Save time and money by finding the best travel deals. We provide a range of exclusive promotions and discounts to make your trip more affordable.")
                    .font(.body)
                    .padding(.horizontal)
                    .multilineTextAlignment(.center)
                    .frame(width: 318.0, alignment: .top)
                
                NavigationLink(destination: ThirdOnboardView(), isActive: $isRedirected) {
                        EmptyView()
                }
                                                                
            Button(action: {
                navigateToThirdOnboardView()
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
                        .background(Color(white: 149.0 / 255.0))
                    
                    Circle()
                        .foregroundColor(.clear)
                        .frame(width: 12.0, height: 12.0)
                        .background(Color(red: 26.0 / 255.0, green: 142.0 / 255.0, blue: 234.0 / 255.0))
                    Circle()
                        .foregroundColor(.clear)
                        .frame(width: 12.0, height: 12.0)
                        .background(Color(white: 149.0 / 255.0))
                        .onTapGesture {
                            navigateToThirdOnboardView()
                        }
                    }
                .padding(.bottom)
                .offset(y: 60)
            }
        )
    }
}
    }

    func navigateToThirdOnboardView() {
            isRedirected = true
        }
}

struct SecondOnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        SecondOnBoardView()
    }
}
