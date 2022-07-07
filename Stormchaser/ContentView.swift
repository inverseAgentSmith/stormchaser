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
                    
                    HStack {
                        VStack {
                            Text("TUE")
                                .foregroundColor(.white)
                                .font(.system(size: 16,
                                              weight: .medium,
                                              design: .default))
                            Image(systemName: "wind")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            
                            Text("19°")
                                .font(.system(size: 28,
                                              weight: .semibold,
                                              design: .default))
                                .foregroundColor(.white)
                            
                        }
                        
                        VStack {
                            Text("WED")
                                .foregroundColor(.white)
                                .font(.system(size: 16,
                                              weight: .medium,
                                              design: .default))
                            Image(systemName: "cloud.rain.fill")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            
                            Text("14°")
                                .font(.system(size: 28,
                                              weight: .semibold,
                                              design: .default))
                                .foregroundColor(.white)
                            
                        }
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

