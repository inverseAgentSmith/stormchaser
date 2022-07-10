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
                    WeatherDayView(dayOfWeek: isNight ? "NOW": "TUE", weatherImageName: isNight ? "moon.stars.fill": "sun.max.fill", temperature: isNight ? 13: 21)
                    
                    WeatherDayView(dayOfWeek: isNight ? "03": "TUE", weatherImageName: isNight ? "cloud.moon.fill": "sun.max.fill", temperature: isNight ? 10: 21)
                    
                    WeatherDayView(dayOfWeek: isNight ? "04": "TUE", weatherImageName: isNight ? "moon.fill": "sun.max.fill", temperature: isNight ? 11: 21)
                    
                    WeatherDayView(dayOfWeek: isNight ? "05": "TUE", weatherImageName: isNight ? "sunrise.fill": "sun.max.fill", temperature: isNight ? 12: 21)
                    
                    WeatherDayView(dayOfWeek: isNight ? "06": "TUE", weatherImageName: isNight ? "cloud.sun.fill": "sun.max.fill", temperature: isNight ? 13: 21)
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
