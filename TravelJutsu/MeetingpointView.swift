

import Foundation

import SwiftUI


struct MeetingpointView: View {
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
                
                NavigationLink(destination: FacilitiesView()){
                    Image("Frame 3")
                        .font(.custom("Poppins-Medium", size: 40.0))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .offset(x: 0 ,y: 90)
                }
                
            }
        }
    }
    
    struct MeetingpointView_Previews: PreviewProvider {
        static var previews: some View {
            MeetingpointView()
        }
    }

