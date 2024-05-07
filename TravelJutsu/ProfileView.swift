//
//  ProfileView.swift
//  TravelJutsu
//
//  Created by Manav Patel on 2024-03-22.

import SwiftUI

struct ProfileView: View {
    @State private var showSettings = false
    @State private var showCoupons = false
    @State private var searchText = ""
    @State private var selectedTab = 0
    @State private var isShopActive = false
    @State private var isNotificationsActive = false
    @State private var isProfileActive = false
    @State private var isDetailtripsActive = false
    @State private var isEditProfileActive  = false
    
    
    var body: some View {
        ZStack{
            ScrollView {
                VStack(spacing: 40) {
                    // Profile Picture and Points
                    ProfileHeader(isEditProfileActive: $isEditProfileActive)
                    
                    // Settings Section
                    ProfileSection(title: "Settings", description: "View and set your account preferences") {
                        showSettings.toggle()
                    }
                    .sheet(isPresented: $showSettings) {
                        SettingsView()
                    }
                    
                    // Coupon & Voucher Section
                    ProfileSection(title: "Coupon & Voucher", description: "Claim vouchers and discounts for reduced prices or free shipping") {
                        showCoupons.toggle()
                    }
                    .sheet(isPresented: $showCoupons) {
                        CouponsView()
                    }
                    
                    // Support Center Section
                    ProfileSection(title: "Support Center", description: "Find the best answer to your question") {
                        // Action for support center
                    }
                    
                    Spacer() // Add a spacer to push footer to the bottom
                    
                }
                .padding(.top, 50)
               
            }
            .background(Color.white)
            .edgesIgnoringSafeArea(.all)
            // Footer Section
            FooterView(selectedTab: $selectedTab, isShopActive: $isShopActive, isNotificationsActive: $isNotificationsActive, isProfileActive: $isProfileActive)
                .padding(.bottom)
                .offset(y: 370)
            // Add padding to bottom of footer
        }
    }
}

struct ProfileHeader: View {
    @Binding var isEditProfileActive: Bool
    
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .foregroundColor(.blue)
            
            VStack(alignment: .leading, spacing: 4) {
                NavigationLink(destination: EditProfileView(), isActive: $isEditProfileActive){
                    Button (action: {isEditProfileActive = true}){
                        Text("Adams")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                }
                Text("6000 points")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 20)
    }
}

struct ProfileSection: View {
    var title: String
    var description: String
    var action: () -> Void
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.blue)
                    .font(.body)
            }
            .onTapGesture {
                action()
            }
            
            Text(description)
                .font(.body)
                .foregroundColor(.black)
        }
        .padding(.horizontal)
        .padding(.vertical, 15)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9))
        )
    }
}

struct SettingsView: View {
    var body: some View {
        ZStack {
            // Background gradient
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 20) {
                    // Title
                    Text("Settings")
                        .font(.custom("Poppins-Bold", size: 24))
                        .foregroundColor(.black)
                    
                    // Setting options
                    SettingOptionButton(title: "Account", action: {
                        // Action for Account setting
                    })
                    SettingOptionButton(title: "Password", action: {
                        // Action for Password setting
                    })
                    SettingOptionButton(title: "Security", action: {
                        // Action for Security setting
                    })
                    SettingOptionButton(title: "Language", action: {
                        // Action for Language setting
                    })
                    SettingOptionButton(title: "Currency", action: {
                        // Action for Currency setting
                    })
                    SettingOptionButton(title: "Notifications", action: {
                        // Action for Notifications setting
                    })
                    SettingOptionButton(title: "Location", action: {
                        // Action for Location setting
                    })
                    SettingOptionButton(title: "Sign Out", action: {
                        // Action for Sign Out setting
                    })
                }
                .padding()
            }
        }
    }
}

struct CouponsView: View {
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



struct FooterView: View {
    @Binding var selectedTab: Int
    @Binding var isShopActive: Bool
    @Binding var isNotificationsActive: Bool
    @Binding var isProfileActive: Bool
    
    var body: some View {
        Rectangle()
            .fill(Color.black)
            .frame(height: 120)
            .overlay(
                HStack {
                    NavigationLink(destination: HomeView(), isActive: $isShopActive) {
                        Button(action: {
                            selectedTab = 0
                            isShopActive = true
                        }) {
                            VStack {
                                Image(systemName: "house.fill")
                                Text("Home")
                            }
                        }
                        .foregroundColor(selectedTab == 0 ? .white : .gray)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: ShopView(), isActive: $isShopActive) {
                        Button(action: {
                            selectedTab = 1
                            isShopActive = true
                        }) {
                            VStack {
                                Image(systemName: "cart.fill")
                                Text("Shop")
                            }
                        }
                        .foregroundColor(selectedTab == 1 ? .white : .gray)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: NotificationView(), isActive: $isNotificationsActive) {
                        Button(action: {
                            selectedTab = 2
                            isNotificationsActive = true
                        }) {
                            VStack {
                                Image(systemName: "bell.fill")
                                Text("Notifications")
                            }
                        }
                        .foregroundColor(selectedTab == 2 ? .white : .gray)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: ProfileView(), isActive: $isProfileActive) {
                        Button(action: {
                            selectedTab = 3
                            isProfileActive = true
                        }) {
                            VStack {
                                Image(systemName: "person.fill")
                                Text("Profile")
                            }
                        }
                        .foregroundColor(selectedTab == 3 ? .white : .gray)
                    }
                }
                .padding(.horizontal, 30)
            )
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
