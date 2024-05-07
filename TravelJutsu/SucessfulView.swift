import Foundation

import SwiftUI


struct SucessfulView: View {
    var body: some View {
            ZStack{
                Color.blue
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 40.0) {
                    VStack(alignment: .center) {
                        ZStack() {
                            Image("Payment-done")
                        }
                            .frame(width: 124.0, height: 124.0)
                        Text("Congratulation!")
                            .font(.custom("Poppins-SemiBold", size: 32.0))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            
                        Text("You  have successfullly booked!")
                            .font(.custom("Poppins-Medium", size: 14.0))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                    }
                .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: 261.0, height: 193.0)
                }
                .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                .frame(width: 261.0, height: 193.0)
                
            }
        }
    }
    
    struct SucessfulView_Previews: PreviewProvider {
        static var previews: some View {
            SucessfulView()
        }
    }

