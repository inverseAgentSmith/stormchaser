//
//  ContentView.swift
//  Stormchaser
//
//  Created by neo on 2022/07/06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = true
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black: .blue,
                           middleColor: isNight ? .blue: .gray,
                           bottomColor: isNight ? .gray: .orange)
            
            VStack {
                CurrentCityWeatherView(cityName: "Cape Town, WC",
                                       weatherImageName: isNight ? "moon.stars.fill": "cloud.sun.fill",
                                       temperature: isNight ? 13: 26)
                
                HStack(spacing: 30) {
                    WeatherDayView(dayOfWeek: "TUE", weatherImageName: "sun.max.fill", temperature: 21)
                    
                    WeatherDayView(dayOfWeek: "WED", weatherImageName: "cloud.sun.fill", temperature: 21)
                    
                    WeatherDayView(dayOfWeek: "THU", weatherImageName: "cloud.fill", temperature: 21)
                    
                    WeatherDayView(dayOfWeek: "FRI", weatherImageName: "cloud.rain.fill", temperature: 21)
                    
                    WeatherDayView(dayOfWeek: "SAT", weatherImageName: "cloud.heavyrain.fill", temperature: 21)
                }
                .padding()
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    ChangeDayTimeButton(title: "Change Day Time",
                                        background: .white, textColor: .blue)
                }
                Spacer()
            }
        }
    }
}
            
            
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var weatherImageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16,
                              weight: .medium,
                              design: .default))
            Image(systemName: weatherImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28,
                              weight: .medium,
                              design: .default))
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var middleColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,
                                                   middleColor, bottomColor]),
                       startPoint: .topLeading ,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CurrentCityWeatherView: View {
    
    var cityName: String
    var weatherImageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 10) {
            Text(cityName)
                .font(.system(size: 32,
                              weight: .medium,
                              design: .default))
                .foregroundColor(.white)
                .padding(.top, 20)
            
            Image(systemName: weatherImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 70,
                              weight: .light,
                              design: .default))
        }
    }
}
