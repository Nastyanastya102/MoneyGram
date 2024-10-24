//
//  ContentView.swift
//  MoneyGram
//
//  Created by Nastya Klyashtorna on 2024-10-21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = true
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradientView(top: isNight ? .black : .blue, bottom: isNight ? .gray : Color("LightBlue"))
                VStack {
                    CityTextView(cityName: "Cupertino, CA")
                    VStack(spacing: 10) {
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 180)
                        Text("78°")
                            .font(.system(size: 70, weight: .medium))
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 42)
                    
                    HStack(spacing: 24) {
                        SmallWeatherView(day: "Mon", icon: "cloud.sun.fill", temperature: 78)
                        SmallWeatherView(day: "Tue", icon: "sun.max.fill", temperature: 82)
                        SmallWeatherView(day: "Wed", icon: "sun.max.fill", temperature: 80)
                        SmallWeatherView(day: "Thu", icon: "cloud.sun.rain.fill", temperature: 57)
                        SmallWeatherView(day: "Fri", icon: "cloud.sun.rain.fill", temperature: 65)
                    }
                    Spacer()
                    Button {
                        isNight.toggle()
                    } label: {
                        ButtonView()
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct SmallWeatherView: View {
    var day: String = "Mon"
    var icon: String = "cloud.sun.fill"
    var temperature: Int = 78
    
    var body: some View {
        VStack {
            Text(day)
                .foregroundColor(.white)
                .font(.system(size: 24))
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 24, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct LinearGradientView: View {
    var top: Color
    var bottom: Color

    var body: some View {
        LinearGradient(colors: [top, bottom],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}


struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
    }
}

struct ButtonView: View {
    var body: some View {
            Text("Change day time")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.blue)
                .frame(width: 280, height: 70)
                .background(Color.white)
                .cornerRadius(14)
    }
}
