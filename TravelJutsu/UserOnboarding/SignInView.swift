import SwiftUI
import FirebaseAuth

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSigup = false
    @State private var isForgotPass = false
    @State private var isHomeActive = false
    @State private var isValidCredentials: Bool = false
    @State private var signInError: String? = nil
    
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
                        .offset(y: 120)
                    
                    RoundedRectangle(cornerRadius: 45)
                        .fill(Color.white)
                        .frame(height: 720)
                        .offset(y: -70)
                        .overlay(
                            VStack(alignment: .leading, spacing: 14.0) {
                                Text("Sign In")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                Text("Please enter a valid account")
                                    .font(.body)
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                
                                Text("Email")
                                    .font(.custom("Poppins-Medium", size: 12.0))
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                
                                TextField("Email", text: $email)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.bottom, 10)
                                
                                Text("Password")
                                    .font(.custom("Poppins-Medium", size: 12.0))
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                
                                SecureField("Password", text: $password)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .padding(.bottom, 20)
                                
                                
                                HStack {
                                    Spacer()
                                    
                                    NavigationLink(destination: ForgotPassView()) {
                                        Text("Forgot Password")
                                            .font(.callout)
                                    }
                                }
                                
                                NavigationLink(destination: HomeView(), isActive: $isHomeActive) {
                                    EmptyView()
                                }
                                
                                Button(action: {
                                    isHomeActive = true
                                }) {
                                    Text("Sign In")
                                        .foregroundColor(.white)
                                        .frame(maxWidth: .infinity, minHeight: 50)
                                        .background(Color.black)
                                        .cornerRadius(35)
                                }
                                .alert(isPresented: Binding<Bool>(
                                                                get: { signInError != nil },
                                                                set: { _ in signInError = nil }
                                                            )) {
                                                                Alert(
                                                                    title: Text("Error"),
                                                                    message: Text(signInError ?? "Unknown error"),
                                                                    dismissButton: .default(Text("OK"))
                                                                )
                                                            }
                            }
                                .padding()
                                .offset(y: -200)
                        )
                }
                VStack {
                    Spacer()
                    HStack {
                        Text("Don’t have an account?")
                            .font(.custom("Poppins-Regular", size: 14.0))
                            .foregroundColor(Color(white: 149.0 / 255.0))
                            .multilineTextAlignment(.center)
                        
                        NavigationLink(destination: SignUpView(), isActive: $isSigup) {
                            Text("Sign Up")
                                .font(.custom("Poppins-Medium", size: 14.0))
                                .foregroundColor(Color(white: 0.0))
                                .multilineTextAlignment(.center)
                        }
                    }
                    .padding(.bottom, 20)
                    .offset(y: -300)
                }
                .frame(maxWidth: .infinity)
            }
        }
    func signIn() {
        guard !email.isEmpty, !password.isEmpty else {
            signInError = "Please enter both email and password."
            return
        }

        let semaphore = DispatchSemaphore(value: 0)

        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            defer { semaphore.signal() }
            if let error = error {
                signInError = error.localizedDescription
            } else if authResult != nil {
                // Sign-in successful
                isValidCredentials = true
            }
        }

        _ = semaphore.wait(timeout: .now() + 10)
    }

    }

    struct SignInView_Previews : PreviewProvider{
        static var previews : some View{
            SignInView()
        }
    }

