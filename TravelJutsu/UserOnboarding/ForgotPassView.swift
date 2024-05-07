import SwiftUI

struct ForgotPassView: View {
    @State private var email = ""
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image("Wagon")
                    .resizable()
                    .frame(width: 393.0, height: 393.0)
                    .aspectRatio(contentMode: .fit)
                    .offset(y: 160)
                
                RoundedRectangle(cornerRadius: 45)
                    .fill(Color.white)
                    .frame(height: 720)
                    .offset(y: -40)
                    .overlay(
                        VStack(alignment: .leading, spacing: 14.0) {
                            Text("Forgot Password")
                                .font(.title)
                                .bold()
                                .foregroundColor(Color(white: 0.0))
                                .multilineTextAlignment(.leading)
                            Text("Please enter your email for sending OTP")
                                .font(.body)
                                .foregroundColor(Color(white: 0.0))
                                .multilineTextAlignment(.leading)
                            
                            
                            Text("Email")
                                .font(.custom("Poppins-Medium", size: 12.0))
                                .foregroundColor(Color(white: 0.0))
                                .multilineTextAlignment(.leading)
                                .offset(y: 25)
                            
                            TextField("Email", text: $email)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding(.bottom, 10)
                                .offset(y: 25)
                            
                            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                Text("Send")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity, minHeight: 50)
                                    .background(Color.black)
                                    .cornerRadius(35)
                                    .offset(y: 45)
                            }
                        }
                            .padding()
                            .offset(y: -210)
                    )
            }
        }
        }
    }
    
    struct ForgotPassView_Previews : PreviewProvider{
        static var previews : some View{
            ForgotPassView()
        }
    }

