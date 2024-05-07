

import Foundation

import SwiftUI


struct PaymentView: View {
    @State private var selectedDate = Date()
    @State private var remainingTime: TimeInterval = 15 * 60
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var isSuccessActive: Bool = false
    
    var body: some View {
        
            ZStack{
                // Background
                Color.white.edgesIgnoringSafeArea(.all)
                ScrollView{
                    VStack(alignment: .leading, spacing: 4.0) {
                        Text("Continue payment")
                            .font(.custom("Poppins-Medium", size: 20.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                        Text("Order ID : 123456789")
                            .font(.custom("Poppins-Regular", size: 12.0))
                            .foregroundColor(Color(white: 0.0))
                            .multilineTextAlignment(.leading)
                    }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: 190.0, height: 49.0)
                    
                    HStack(alignment: .center, spacing: 5.0) {
                        HStack(alignment: .top, spacing: 10.0) {
                            Circle()
                                .foregroundColor(.clear)
                                .frame(width: 30.0, height: 30.0)
                                .background(Color(white: 149.0 / 255.0, opacity: 0.5))
                            Text("1")
                                .font(.custom("Poppins-Regular", size: 12.0))
                                .foregroundColor(Color(white: 0.0, opacity: 0.5))
                                .multilineTextAlignment(.leading)
                        }
                        .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 30.0, height: 30.0)
                        HStack(alignment: .center, spacing: 11.0) {
                            Text("Payment Method")
                                .font(.custom("Poppins-Regular", size: 12.0))
                                .foregroundColor(Color(white: 0.0, opacity: 0.5))
                                .multilineTextAlignment(.leading)
                        }
                        .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 103.0, height: 18.0)
                    }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: 138.0, height: 30.0)
                    
                    HStack(alignment: .center, spacing: 5.0) {
                        HStack(alignment: .center, spacing: 10.0) {
                            Circle()
                                .foregroundColor(.clear)
                                .frame(width: 30.0, height: 30.0)
                                .background(Color(red: 26.0 / 255.0, green: 142.0 / 255.0, blue: 234.0 / 255.0))
                            Text("2")
                                .font(.custom("Poppins-Regular", size: 12.0))
                                .foregroundColor(Color(white: 0.0))
                                .multilineTextAlignment(.leading)
                        }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 30.0, height: 30.0)
                        HStack(alignment: .center, spacing: 11.0) {
                            Text("Pay")
                                .font(.custom("Poppins-Regular", size: 12.0))
                                .foregroundColor(Color(white: 0.0))
                                .multilineTextAlignment(.leading)
                        }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 22.0, height: 18.0)
                    }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: 57.0, height: 30.0)
                    
                    HStack(alignment: .center, spacing: 5.0) {
                        HStack(alignment: .center, spacing: 10.0) {
                            Circle()
                                .foregroundColor(.clear)
                                .frame(width: 30.0, height: 30.0)
                                .background(Color(white: 149.0 / 255.0, opacity: 0.5))
                            Text("3")
                                .font(.custom("Poppins-Regular", size: 12.0))
                                .foregroundColor(Color(white: 0.0, opacity: 0.5))
                                .multilineTextAlignment(.leading)
                        }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 30.0, height: 30.0)
                        HStack(alignment: .center, spacing: 11.0) {
                            Text("Done")
                                .font(.custom("Poppins-Regular", size: 12.0))
                                .foregroundColor(Color(white: 0.0, opacity: 0.5))
                                .multilineTextAlignment(.leading)
                        }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 32.0, height: 18.0)
                    }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: 67.0, height: 30.0)
                    
                    Divider()
                    
                    VStack(alignment: .leading) {
                                Text("Pay soon")
                                    .font(.title)
                                    .padding()
                                
                                HStack {
                                    Button(action: {
                                        if remainingTime > 60 { // Ensure time doesn't go negative
                                            remainingTime -= 60 // Decrease time by 1 minute
                                        }
                                    }) {
                                        Image(systemName: "arrow.left")
                                            .foregroundColor(.red)
                                    }
                                    .padding()
                                    
                                    Text(timeString(from: remainingTime))
                                        .font(.title2)
                                        .foregroundColor(.red)
                                    
                                    Spacer()
                                }
                                
                                Menu {
                                    ForEach(15..<21) { day in
                                        Button(action: {
                                            // Action for selecting date
                                        }) {
                                            Text("20 Dec 2023")
                                                .foregroundColor(.black)
                                        }
                                    }
                                } label: {
                                    HStack {
                                        Text("Semeru")
                                            .font(.title2)
                                            .padding()
                                        
                                        Spacer()
                                        
                                        Image(systemName: "chevron.down")
                                            .resizable()
                                            .frame(width: 12, height: 12)
                                            .padding()
                                    }
                                    
                                    Text("15 - 20 Dec 2023")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                        .padding([.leading, .bottom, .trailing])
                                }
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                            .frame(width: 350, height: 280)
                            .shadow(color: .gray, radius: 5, x: 0, y: 5)
                            .onReceive(timer) { _ in
                                if remainingTime > 0 {
                                    remainingTime -= 1 // Decrease time by 1 second every tick
                                }
                            }
                    
                    VStack(alignment: .leading, spacing: 20) {
                                Text("Transfer to")
                                    .font(.headline)
                                
                                VStack(alignment: .leading, spacing: 10) {
                                    HStack {
                                        Image(systemName: "circle.fill")
                                            .foregroundColor(.blue)
                                        Text("GOPAY")
                                            .font(.title2)
                                    }
                                    
                                    Text("7 8001 0821 4748 4998")
                                        .font(.body)
                                    
                                    Image(systemName: "creditcard.fill")
                                        .foregroundColor(.gray)
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                                
                                Text("Payment Total")
                                    .font(.headline)
                                
                                HStack {
                                    Text("$80")
                                        .font(.largeTitle)
                                        .fontWeight(.bold)
                                        Spacer()
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                            }
                            .padding()
                    
                    ZStack() {
                        HStack(alignment: .center, spacing: 36.0) {
                            VStack(alignment: .leading) {
                                Text("$80")
                                    .font(.custom("Poppins-Medium", size: 28.0))
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 62.0, height: 36.0, alignment: .topLeading)
                                Text("Will get +1200 points")
                                    .font(.custom("Poppins-Light", size: 10.0))
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                            }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(width: 100.0, height: 51.0)
                        }
                    .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 100.0, height: 51.0)
                        .offset(x: -129.0, y: -3.5)
                        HStack(alignment: .center, spacing: 10.0) {
                            
                            NavigationLink(destination: SucessfulView(), isActive: $isSuccessActive) {
                                    EmptyView()
                            }
                            
                            Button (action: {navigateToSuccessView()}){
                                Text("Pay Now")
                                    .font(.custom("Poppins-Bold", size: 14.0))
                                    .foregroundColor(Color(white: 249.0 / 255.0))
                                    .multilineTextAlignment(.leading)
                            }
                        }
                    .padding(EdgeInsets(top: 18.0, leading: 43.0, bottom: 18.0, trailing: 43.0))
                        .frame(width: 230.0, height: 57.0)
                        .background(Color(white: 26.0 / 255.0))
                        .cornerRadius(30.0)
                        .offset(x: 72.0, y: -0.5)
                    }
                        .frame(width: 430.0, height: 96.0)
                        .background(Color(white: 249.0 / 255.0))
                        .shadow(color: Color(white: 0.0, opacity: 0.25), radius: 4.5, x: 0.0, y: 0.0)
                }
            }
        }
    func timeString(from seconds: TimeInterval) -> String {
            let formatter = DateComponentsFormatter()
            formatter.unitsStyle = .positional
            formatter.allowedUnits = [.hour, .minute, .second]
            formatter.zeroFormattingBehavior = [.pad]
            return formatter.string(from: seconds) ?? "00:00:00"
        }
    func navigateToSuccessView() {
            isSuccessActive = true
        }
    }
    
    struct PaymentView_Previews: PreviewProvider {
        static var previews: some View {
            PaymentView()
        }
    }

//import Foundation
// 
//import SwiftUI
// 
// 
//struct PaymentView: View {
// 
//    var body: some View {
//        VStack {
//            HStack(alignment: .top) {
//                Text("Order ID:")
//                    .font(.headline)
//                    .bold()
//                Spacer()
//                Text("123456789")
//            }
//            .padding(.top)
//            .padding(.horizontal)
//            .background(Color.white.cornerRadius(10)) // Added rectangle for Order ID section
// 
//            Text("Semeru Mountain")
//                .font(.title)
//                .padding(.top)
//                .padding(.horizontal)
//                .background(Color.white.cornerRadius(10)) // Added rectangle for Semeru Mountain
// 
//            Text("15-20 Dec 2023")
//                .font(.subheadline)
//                .padding(.horizontal)
// 
//            Spacer()
// 
//            HStack {
//                Text("Transfer to")
//                    .font(.headline)
//                    .bold()
//                Spacer()
//                Image(systemName: "questionmark.circle")
//            }
//            .padding(.horizontal)
// 
//            Text("Paypal")
//                .font(.title2)
//                .padding(.top)
//                .padding(.horizontal)
// 
//            Text("7 8001 082147484998")
//                .font(.subheadline)
//                .padding(.horizontal)
// 
//            Spacer()
// 
//            HStack {
//                VStack(alignment: .leading) {
//                    Text("Payment Total")
//                        .font(.headline)
//                        .bold()
//                    Text("$80")
//                        .font(.title2)
//                }
//                Spacer()
//                Image(systemName: "info.circle")
//            }
//            .padding(.horizontal)
//            .background(Color.white.cornerRadius(10)) // Added rectangle for Payment Total section
// 
//            Spacer()
// 
//            Button(action: {}, label: {
//                Text("Continue Payment")
//                    .foregroundColor(.white)
//                    .font(.headline)
//                    .padding()
//                    .background(Color.blue)
//                    .cornerRadius(10)
//            })
//            .padding(.horizontal)
//        }
//        .background(Color.white.edgesIgnoringSafeArea(.all))
//    }
//}
//    
//    struct PaymentView_Previews: PreviewProvider {
//        static var previews: some View {
//            PaymentView()
//        }
//    }
