import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var selectedTab = 0
    @State private var isRedirected: Bool = false
    @State private var isNotificationActive: Bool = false
    @State private var isProfileActive: Bool = false
    @State private var isSettingActive: Bool = false
    
    var data = [
        ("Hiking", "Semeru Mountain", 4.5, "Malang, East Java", "SemeruMountain"),
        ("Travel", "Raja Ampat", 4.0, "Raja Ampat, West Papua", "RajaAmpat"),
        ("Adventure", "Kargil", 4.7, "Jammu, India", "Kargil")
    ]
    var data2 = [
        ("Central Java", "location1"),
        ("West Java", "location2")
    ]
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // Background
            Color.white.edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical) {
                VStack {
                    Text("Welcome back!")
                        .font(.custom("Poppins-Regular", size: 12.0))
                        .foregroundColor(Color(white: 0.0))
                        .multilineTextAlignment(.leading)
                        .offset(x:-130, y:10)
                    
                    Text("Journey Jutsu")
                        .font(.custom("Poppins-Medium", size: 16.0))
                        .foregroundColor(Color(white: 0.0))
                        .multilineTextAlignment(.leading)
                        .offset(x:-130, y:10)
                    
                    HStack {
                        Spacer()
                        
                        NavigationLink(destination: SettingView(), isActive: $isSettingActive) {
                                EmptyView()
                        }
                        
                        Button (action: {navigateToSettingView()}){
                            Image("setting-2")
                                .offset(y:-20)
                                .padding(.trailing, 20)
                        }
                    }
                    
                    TextField("Search", text: $searchText)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(12)
                        .foregroundColor(.black)
                        .padding(.bottom, 20)
                        .padding(.horizontal, 20)
                    
                    Text("Popular Nearby")
                        .font(.custom("Poppins-SemiBold", size: 20.0))
                        .foregroundColor(Color(white: 0.0))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(data, id: \.self.1) { item in
                                CardView(item: item)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    }
                    
                    Text("Choose the location you want")
                        .font(.custom("Poppins-SemiBold", size: 20.0))
                        .foregroundColor(Color(white: 0.0))
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 20)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(data2, id: \.self.1) { content in
                                CardView2(content: content)
                            }
                        }
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    }
                    
                    Spacer()
                }
            }
            
            // Rectangle and buttons at the bottom
            Rectangle()
                .fill(Color.black)
                .frame(height: 120)
                .overlay(
                    HStack {
                        Button(action: { selectedTab = 0 }) {
                            VStack {
                                Image(systemName: "house.fill")
                                Text("Home")
                            }
                        }
                        .foregroundColor(selectedTab == 0 ? .white : .gray)
                        
                        Spacer()
                        
                        NavigationLink(destination: ShopView(), isActive: $isRedirected) {
                                EmptyView()
                        }
                        
                        Button(action: { navigateToShopView() ;selectedTab = 1 }) {
                            VStack {
                                Image(systemName: "cart.fill")
                                Text("Shop")
                            }
                        }
                        .foregroundColor(selectedTab == 1 ? .white : .gray)
                        
                        Spacer()
                        
                        NavigationLink(destination: NotificationView(), isActive: $isNotificationActive) {
                                EmptyView()
                        }
                        
                        Button(action: { navigateToNotificationView() ;selectedTab = 2 }) {
                            VStack {
                                Image(systemName: "bell.fill")
                                Text("Notifications")
                            }
                        }
                        .foregroundColor(selectedTab == 2 ? .white : .gray)
                        
                        Spacer()
                        
                        NavigationLink(destination: ProfileView(), isActive: $isProfileActive) {
                                EmptyView()
                        }
                        
                        Button(action: { navigateToProfileView() ;selectedTab = 3 }) {
                            VStack {
                                Image(systemName: "person.fill")
                                Text("Profile")
                            }
                        }
                        .foregroundColor(selectedTab == 3 ? .white : .gray)
                    }
                    .padding(.horizontal, 30)
                )
                .offset(y:40)
                .edgesIgnoringSafeArea(.bottom)
        }
    }
    func navigateToShopView() {
            isRedirected = true
        }
    
    func navigateToProfileView() {
            isProfileActive = true
        }
    
    func navigateToNotificationView() {
        isNotificationActive = true
    }
    func navigateToSettingView() {
        isSettingActive = true
    }
}

struct CardView: View {
    var item: (String, String, Double, String, String)
    @State private var isDetailViewActive = false
    
    var body: some View {
        VStack {
            Text(item.0)
                .font(.headline)
            Image(item.4) // Use the image name from the data model
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            Text(item.1)
                .font(.title2)
            HStack {
                Image(systemName: "star.fill")
                Text(String(format: "%.1f", item.2)) // Limit the number of decimal places to 1
            }
            Text(item.3)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .onTapGesture {
                    if item.1 == "Semeru Mountain" {
                        isDetailViewActive = true // Activate navigation
                    }
                }
                .sheet(isPresented: $isDetailViewActive) {
                    NavigationView {
                        DetailtripView() // Present DetailtripView when isDetailViewActive is true
                    }
                }
    }
}

struct CardView2: View {
    var content: (String, String)
    
    var body: some View {
        VStack {
            Text(content.0)
                .font(.headline)
            Image(content.1)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
