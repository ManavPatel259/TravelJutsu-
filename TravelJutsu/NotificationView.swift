

import Foundation

import SwiftUI


struct NotificationView: View {
    var body: some View {
            ZStack{
                ScrollView{
                    VStack {
                                VStack(alignment: .leading) {
                                    Text("TODAY")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .padding(.top)
                                    
                                    VStack(alignment: .leading) {
                                        Text("19 Jan 2024")
                                            .font(.headline)
                                            .padding(.top)
                                        
                                        HStack {
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.yellow)
                                            
                                            VStack(alignment: .leading) {
                                                Text("Discount 20% from GOPAY!")
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                
                                                Text("By using GOPAY payment during your transaction, you get up to 20% discount!")
                                                    .font(.body)
                                                    .foregroundColor(.gray)
                                            }
                                            
                                            Spacer()
                                            
                                            Image(systemName: "photo")
                                                .padding()
                                                .background(Color.blue.opacity(0.2))
                                                .cornerRadius(10)
                                       
                                        }
                                        .padding([.leading, .trailing])
                                        
                                        Divider()
                                    }
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                    .padding([.leading, .trailing])
                                }
                                
                                VStack(alignment: .leading) {
                                    Text("YESTERDAY")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .padding(.top)
                                    
                                    VStack(alignment: .leading) {
                                        Text("18 Jan 2024")
                                            .font(.headline)
                                            .padding(.top)
                                        
                                        HStack {
                                            Image(systemName: "star.fill")
                                                .foregroundColor(.yellow)
                                            
                                            VStack(alignment: .leading) {
                                                Text("Cashback 20% from DANA!")
                                                    .font(.title2)
                                                    .fontWeight(.bold)
                                                
                                                Text("Get 20% DANA Cashback, if you spend more than $50 on anything.")
                                                    .font(.body)
                                                    .foregroundColor(.gray)
                                            }
                                            
                                            Spacer()
                                            
                                            Image(systemName: "photo") // Replace with actual Image view when integrating with real images
                                                .padding()
                                                .background(Color.blue.opacity(0.2))
                                                .cornerRadius(10)
                                        }
                                        .padding([.leading, .trailing])
                                        
                                        Divider()
                                    }
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(color: .gray, radius: 5, x: 0, y: 5)
                                    .padding([.leading, .trailing])
                                }
                            }
                }
            }
        }
    }
    
    struct NotificationView_Previews: PreviewProvider {
        static var previews: some View {
            NotificationView()
        }
    }
