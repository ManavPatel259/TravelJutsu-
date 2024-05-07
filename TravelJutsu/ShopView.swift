import SwiftUI

struct ShopView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Shopping")
                .font(.largeTitle)
                .padding()
            
            ScrollView {
                
                
                VStack {
                    HStack {
                        Image(systemName: "cart.fill")
                        Text("Product")
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "ellipsis")
                    }
                    .padding()
                    
                    Divider()
                    
                    HStack {
                        Image("Suit")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .cornerRadius(10)
                        
                        Text("Trecking Suit")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("Shop")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(15)
                        }
                    }
                    .padding()
                }
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .frame(width: 360, height: 150)
                
//                Spacer()
                Divider()
                
                VStack {
                    HStack {
                        Image(systemName: "cart.fill")
                        Text("Product")
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "ellipsis")
                    }
                    .padding()
                    
                    Divider()
                    
                    HStack {
                        Image("Travelbag")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .cornerRadius(10)
                        
                        Text("Trecking Bag")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("Shop")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(15)
                        }
                    }
                    .padding()
                }
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .frame(width: 360, height: 150)
                
                Divider()
                
                VStack {
                    HStack {
                        Image(systemName: "cart.fill")
                        Text("Product")
                            .font(.title)
                            .bold()
                        Spacer()
                        Image(systemName: "ellipsis")
                    }
                    .padding()
                    
                    Divider()
                    
                    HStack {
                        Image("boots")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipped()
                            .cornerRadius(10)
                        
                        Text("Trecking Boots")
                            .font(.title2)
                            .bold()
                        
                        Spacer()
                        
                        Button(action: {}) {
                            Text("Shop")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(15)
                        }
                    }
                    .padding()
                }
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .frame(width: 360, height: 150)
                
            }
        }
    }
}


struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}

    
