import Foundation

import SwiftUI


struct CouponView: View {
    var body: some View {
            ZStack{
                VStack{
                    Image("coupon")
                        .offset(y: -150)
                }
                
                VStack(alignment: .center) {
                    Text("Sorry")
                        .font(.custom("Poppins-SemiBold", size: 32.0))
                        .foregroundColor(Color(white: 0.0))
                        .multilineTextAlignment(.leading)
                    Text("Coupon not available")
                        .font(.custom("Poppins-Medium", size: 14.0))
                        .foregroundColor(Color(white: 0.0))
                        .multilineTextAlignment(.leading)
                }
                .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                .frame(width: 153.0, height: 69.0)
                
            }
        }
    }
    
    struct CoponView_Previews: PreviewProvider {
        static var previews: some View {
            CouponView()
        }
    }
