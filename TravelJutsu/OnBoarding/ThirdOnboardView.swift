import SwiftUI

struct ThirdOnboardView: View {
    @State private var isRedirected: Bool = false
    
    var body: some View {
        
            ZStack {
                Color.blue
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Image("Hiking")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    RoundedRectangle(cornerRadius: 45)
                        .fill(Color.white)
                        .frame(height: 420)
                        .offset(y: 35)
                        .overlay(
                            VStack {
                                Text("Explore Local Attractions")
                                    .font(.title)
                                    .bold()
                                    .padding()
                                
                                Text("Discover the beauty of local places you may never have visited. Experience local life and enjoy authentic experiences in each destination.")
                                    .font(.body)
                                    .padding(.horizontal)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 318.0, alignment: .top)
                                
                                NavigationLink(destination: SignInView(), isActive: $isRedirected) {
                                        EmptyView()
                                }
                                
                                Button(action: {
                                    isRedirected = true
                                }) {
                                    Text("Finish")
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
                                        .background(Color(white: 149.0 / 255.0))
                                    Circle()
                                        .foregroundColor(.clear)
                                        .frame(width: 12.0, height: 12.0)
                                        .background(Color(red: 26.0 / 255.0, green: 142.0 / 255.0, blue: 234.0 / 255.0))
                                }
                                .padding(.bottom)
                                .offset(y: 60)
                            }
                        )
                }
            }
        }
    }


struct ThirdOnboardView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdOnboardView()
    }
}
