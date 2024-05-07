

import Foundation

import SwiftUI


struct FacilitiesView: View {
    var body: some View {
        
            ZStack{
                // Background
                Color.white.edgesIgnoringSafeArea(.all)
                VStack{
                    Image("Rectangle 4167")
                        .font(.custom("Poppins-Medium", size: 40.0))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .offset(x: 0 ,y: -190.0)
                }
                
                NavigationLink(destination: PaymentView()){
                    Image("Frame 5")
                        .font(.custom("Poppins-Medium", size: 40.0))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .offset(x: 0 ,y: 90)
                }
                
            }
        }
    }
    
    struct FacilitiesView_Previews: PreviewProvider {
        static var previews: some View {
            FacilitiesView()
        }
    }

