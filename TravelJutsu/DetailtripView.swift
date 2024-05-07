
import Foundation

import SwiftUI


struct DetailtripView: View {
    @State private var isPayment = false
    @State private var selectedDate = Date()
    @State private var numberOfPax = 1
    @State private var isPaymentActive: Bool = false
    @State private var isInformationActive: Bool = false
    @State private var isMeetingActive: Bool = false
    @State private var isFacilityActive: Bool = false
    
    var cities = ["Serang", "Balaraja", "Tangerang", "Jakarta", "Bekasi", "Cikampek"]
    
    var body: some View {
            ZStack{
                // Background
                Color.white.edgesIgnoringSafeArea(.all)
                ScrollView(.vertical){
                    VStack(){
                        Text("Semeru Mountain")
                            .font(.custom("Poppins-SemiBold", size: 24.0))
                            .foregroundColor(Color(white: 1.0))
                            .multilineTextAlignment(.leading)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 370.0, height: 410.0)
                            .background(Color(white: 217.0 / 255.0))
                            .cornerRadius(30.0)
                            .overlay(
                                Image("semeru")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 360.0, height: 400.0)
                                    .cornerRadius(30.0)
                            )
                        
                        HStack(spacing: 20) {
                            // Rating
                            VStack {
                                Text("4.5")
                                    .font(.custom("Poppins-Medium", size: 16.0))
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                Text("RATING")
                                    .font(.custom("Poppins-Medium", size: 12.0))
                                    .foregroundColor(Color(white: 149.0 / 255.0))
                                    .multilineTextAlignment(.leading)
                            }
                            
                            // Type
                            VStack {
                                Text("Open Trip")
                                    .font(.custom("Poppins-Medium", size: 16.0))
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                Text("TYPE")
                                    .font(.custom("Poppins-Medium", size: 12.0))
                                    .foregroundColor(Color(white: 149.0 / 255.0))
                                    .multilineTextAlignment(.leading)
                            }
                            
                            // Estimate
                            VStack {
                                Text("3D 2N")
                                    .font(.custom("Poppins-Medium", size: 16.0))
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                Text("ESTIMATE")
                                    .font(.custom("Poppins-Medium", size: 12.0))
                                    .foregroundColor(Color(white: 149.0 / 255.0))
                                    .multilineTextAlignment(.leading)
                            }
                            
                            // Via
                            VStack {
                                Text("India")
                                    .font(.custom("Poppins-Medium", size: 16.0))
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                Text("VIA")
                                    .font(.custom("Poppins-Medium", size: 12.0))
                                    .foregroundColor(Color(white: 149.0 / 255.0))
                                    .multilineTextAlignment(.leading)
                            }
                        }
                        .padding()
                        Divider()
                        
                        VStack(alignment: .leading, spacing: 10.0) {
                            HStack(alignment: .top, spacing: 265.0) {
                                Text("Desciption")
                                    .font(.custom("Poppins-Medium", size: 16.0))
                                    .foregroundColor(Color(white: 0.0))
                                    .multilineTextAlignment(.leading)
                                    .frame(width: 87.0, height: 19.0, alignment: .topLeading)
                            }
                        .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(width: 87.0, height: 19.0)
                            Text("Mount Semeru or Mount Meru is a cone volcano in East Java, Indonesia. Mount Semeru is the highest mountain on the island of Java, with its peak Mahameru, 3,676 meters above sea level.")
                                .font(.custom("Poppins-Light", size: 10.0))
                                .foregroundColor(Color(white: 0.0))
                                .multilineTextAlignment(.leading)
                                .frame(width: 370.0, height: 45.0, alignment: .topLeading)
                            Divider()
                        }
                        .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 370.0, height: 74.0)
                        
                        HStack(alignment: .top, spacing: 206.0) {
                            Text("Choose date")
                                .font(.custom("Poppins-Medium", size: 16.0))
                                .foregroundColor(Color(white: 0.0))
                                .multilineTextAlignment(.leading)
                                .frame(width: 144.0, height: 19.0, alignment: .topLeading)
                            ZStack() {
                                ZStack() {
                                    NavigationLink (destination: InformationView(), isActive: $isInformationActive){
                                        Button(action: {navigateToInformationView()}){
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 14.1, height: 14.1)
                                                .background(Color(white: 149.0 / 255.0))
                                                .offset(x: -0.3, y: -0.3)
                                        }
                                    }
                                }
                                    .frame(width: 18.0, height: 18.0)
                            }
                                .frame(width: 18.0, height: 18.0)
                        }
                        .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 368.0, height: 19.0)
                        
                        HStack {
                                    Button(action: {}) {
                                        Text("15 Dec - 20 Dec 2023")
                                            .padding()
                                            .background(Color.white)
                                            .cornerRadius(10)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.black, lineWidth: 1)
                                            )
                                    }
                                    
                                    Button(action: {}) {
                                        Text("25 Dec - 30 Dec 2023")
                                            .padding()
                                            .background(Color.white)
                                            .cornerRadius(10)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color.black, lineWidth: 1)
                                            )
                                    }
                                    
                                    VStack {
                                        Image(systemName: "calendar")
                                        DatePicker("Choose Date", selection: $selectedDate, displayedComponents: .date)
                                            .labelsHidden()
                                    }
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.black, lineWidth: 1)
                                    )
                                }
                                .padding()
                        Divider()
                        
                        HStack(alignment: .top, spacing: 171.0) {
                            Text("Choose Meeting Point")
                                .font(.custom("Poppins-Medium", size: 16.0))
                                .foregroundColor(Color(white: 0.0))
                                .multilineTextAlignment(.leading)
                                .frame(width: 179.0, height: 19.0, alignment: .topLeading)
                            ZStack() {
                                ZStack() {
                                    NavigationLink (destination: MeetingpointView(), isActive: $isMeetingActive){
                                        Button(action: {navigateToMeetingView()}){
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 14.1, height: 14.1)
                                                .background(Color(white: 149.0 / 255.0))
                                                .offset(x: -0.3, y: -0.3)
                                        }
                                    }
                                }
                                    .frame(width: 18.0, height: 18.0)
                            }
                                .frame(width: 18.0, height: 18.0)
                        }
                        
                        .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 368.0, height: 19.0)
                        
                        HStack(spacing: 10) {
                                        ForEach(cities, id: \.self) { city in
                                            Text(city)
                                                .padding(12)
                                                .background(Color.gray.opacity(0.2))
                                                .cornerRadius(15)
                                        }
                                    }
                                    .padding()
                        Divider()
                        
                        VStack(alignment: .leading) {
                                    Text("Number of pax")
                                        .font(.headline)
                                    HStack {
                                        Button(action: {
                                            if numberOfPax > 0 { numberOfPax -= 1 }
                                        }) {
                                            Text("-")
                                                .font(.title)
                                                .frame(width: 40, height: 40)
                                                .background(Color.gray.opacity(0.3))
                                                .cornerRadius(10)
                                        }
                                        
                                        Text("\(numberOfPax)")
                                            .font(.title)
                                        
                                        Button(action: { numberOfPax += 1 }) {
                                            Text("+")
                                                .font(.title)
                                                .frame(width: 40, height: 40)
                                                .background(Color.gray.opacity(0.3))
                                                .cornerRadius(10)
                                        }
                                    }
                                    Text("$80 /pax")
                                    Divider()
                                    // Add icons and text for facilities here
                                }
                                .padding()
                        
                        HStack(alignment: .top, spacing: 265.0) {
                            Text("Facilities")
                                .font(.custom("Poppins-Medium", size: 16.0))
                                .foregroundColor(Color(white: 0.0))
                                .multilineTextAlignment(.leading)
                                .frame(width: 87.0, height: 19.0, alignment: .topLeading)
                            ZStack() {
                                ZStack() {
                                    NavigationLink (destination: FacilitiesView(), isActive: $isFacilityActive){
                                        Button(action: {navigateToFacilityView()}){
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 14.1, height: 14.1)
                                                .background(Color(white: 149.0 / 255.0))
                                                .offset(x: -0.3, y: -0.3)
                                        }
                                    }
                                }
                                    .frame(width: 18.0, height: 18.0)
                            }
                                .frame(width: 18.0, height: 18.0)
                        }
                        .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                        .frame(width: 370.0, height: 19.0)
                        
                        VStack(alignment: .leading) {
                                    HStack {
                                        FacilityView(icon: "bus.fill", text: "Transport")
                                        FacilityView(icon: "doc.text.fill", text: "Simaksi")
                                        FacilityView(icon: "cup.fill", text: "Coffee Break")
                                    }
                                    
                                    HStack {
                                        FacilityView(icon: "tray.fill", text: "Meals during trekking")
                                        FacilityView(icon: "house.fill", text: "Camping tents")
                                        FacilityView(icon: "bandage.fill", text: "P3K")
                                    }
                                    
                                    HStack {
                                        FacilityView(icon: "person.crop.circle.badge.checkmark", text: "Officially recognized mountain guide")
                                        FacilityView(icon: "person.fill", text: "Guide during trekking")
                                    }
                                }
                                .padding()
                    }
                }
                HStack(alignment: .center, spacing: 25.0) {
                    HStack(alignment: .center, spacing: 3.0) {
                        Text("$80")
                            .font(.custom("Poppins-SemiBold", size: 28.0))
                            .foregroundColor(Color(white: 249.0 / 255.0))
                            .multilineTextAlignment(.leading)
                        Text("/person")
                            .font(.custom("PlusJakartaSans-Regular", size: 16.0))
                            .foregroundColor(Color(white: 249.0 / 255.0))
                            .multilineTextAlignment(.leading)
                    }
                .padding(EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .frame(width: 119.0, height: 42.0)
                    HStack(alignment: .center, spacing: 10.0) {
                        
                        NavigationLink(destination: PaymentView(), isActive: $isPaymentActive) {
                                EmptyView()
                        }
                        
                        Button(action: {navigateToPaymentView()}) {
                                               Text("Book Now")
                                                   .font(.custom("Poppins-SemiBold", size: 20.0))
                                                   .foregroundColor(Color.white)
                                                   .padding()
                                                   .frame(width: 170.0, height: 56.0)
                                                   .background(Color(red: 26.0 / 255.0, green: 142.0 / 255.0, blue: 234.0 / 255.0))
                                                   .cornerRadius(30.0)
                                           }
                        
                    }
                .padding(EdgeInsets(top: 13.0, leading: 35.0, bottom: 13.0, trailing: 35.0))
                    .frame(width: 170.0, height: 56.0)
                    .background(Color(red: 26.0 / 255.0, green: 142.0 / 255.0, blue: 234.0 / 255.0))
                    .cornerRadius(30.0)
                }
                .padding(EdgeInsets(top: 12.0, leading: 14.0, bottom: 12.0, trailing: 14.0))
                .frame(width: 430.0, height: 107.0)
                .background(Color(white: 26.0 / 255.0))
                .offset(y: 330)
            }
        }
    func navigateToPaymentView() {
            isPaymentActive = true
        }
    func navigateToInformationView() {
            isInformationActive = true
        }
    func navigateToMeetingView() {
            isMeetingActive = true
        }
    func navigateToFacilityView() {
            isFacilityActive = true
        }
}

struct FacilityView: View {
    var icon: String
    var text: String

    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                .frame(width: 20, height: 20)
            Text(text)
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 1)
        )
    }
}
    struct DetailtripView_Previews: PreviewProvider {
        static var previews: some View {
            DetailtripView()
        }
    }

