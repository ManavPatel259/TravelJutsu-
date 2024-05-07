import SwiftUI
import FirebaseAuth

struct SignUpView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var isSignIn = false
    @State private var signUpError: String? = nil
    
    var body: some View {
//        NavigationView{
            ZStack {
                Color.blue
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    
                    Image("Plane ride")
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
                                Text("Sign Up")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                Text("Create an account, it’s free")
                                    .font(.body)
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                
                                Text("Name")
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                
                                TextField("Name", text: $name)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.bottom, 10)
                                
                                Text("Email")
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                
                                TextField("Email", text: $email)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.bottom, 10)
                                
                                Text("Password")
                                    .font(.body)
                                    .bold()
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                
                                SecureField("Password", text: $password)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.bottom, 20)
                                
                                NavigationLink(destination: SignInView(), isActive: $isSignIn) {
                                    EmptyView()
                                }
                                
                                Button(action: {
                                    signUp() ;isSignIn = true
                                }) {
        
                                    Text("Sign Up")
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, minHeight: 50)
                                        .background(Color.black)
                                        .cornerRadius(35)
                                }
                            }
                                .padding()
                                .offset(y: -130)
                        )
                }
            }
        }
    func signUp() {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    print(error)
                    return
                }
                
                if let authResult = authResult {
                    print(authResult)
                }
            }
        }
    }
//}
        struct SignUpView_Previews : PreviewProvider{
            static var previews : some View{
                SignUpView()
            }
        }
    

