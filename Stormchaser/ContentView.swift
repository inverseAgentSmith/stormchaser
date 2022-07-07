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
            LinearGradient(colors: [.blue, .gray, .orange],
                           startPoint: .topLeading ,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Cape Town, WC")
                    .font(.system(size: 32,
                                  weight: .medium,
                                  design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack (spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("26°")
                        .foregroundColor(.white)
                        .font(.system(size: 70,
                                      weight: .light,
                                      design: .default))
                    
                    HStack(spacing: 20) {
                        WeatherDayView(dayOfWeek: "TUE", weatherImage: "sun.max.fill", temperature: 21)
                        
                        WeatherDayView(dayOfWeek: "WED", weatherImage: "cloud.sun.fill", temperature: 21)
                        
                        WeatherDayView(dayOfWeek: "THU", weatherImage: "cloud.fill", temperature: 21)
                        
                        WeatherDayView(dayOfWeek: "FRI", weatherImage: "cloud.rain.fill", temperature: 21)
                        
                        WeatherDayView(dayOfWeek: "SAT", weatherImage: "cloud.heavyrain.fill", temperature: 21)
                    }
                    Spacer()
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
    var weatherImage: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16,
                              weight: .medium,
                              design: .default))
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28,
                              weight: .semibold,
                              design: .default))
                .foregroundColor(.white)
            
        }
    }
}
