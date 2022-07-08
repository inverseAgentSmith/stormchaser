//
//  ContentView.swift
//  Stormchaser
//
//  Created by neo on 2022/07/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, middleColor: .gray, bottomColor: .orange)
            
            VStack {
                
                CityWeatherView(cityName: "Cape Town, WC",
                                weatherImageName: "cloud.sun.fill",
                                temperature: 26)
                Spacer()
                HStack(spacing: 30) {
                    WeatherDayView(dayOfWeek: "TUE", weatherImageName: "sun.max.fill", temperature: 21)
                    
                    WeatherDayView(dayOfWeek: "WED", weatherImageName: "cloud.sun.fill", temperature: 21)
                    
                    WeatherDayView(dayOfWeek: "THU", weatherImageName: "cloud.fill", temperature: 21)
                    
                    WeatherDayView(dayOfWeek: "FRI", weatherImageName: "cloud.rain.fill", temperature: 21)
                    
                    WeatherDayView(dayOfWeek: "SAT", weatherImageName: "cloud.heavyrain.fill", temperature: 21)
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20,
                                      weight: .semibold,
                                      design: .default))
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                }
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

struct CityWeatherView: View {
    
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
