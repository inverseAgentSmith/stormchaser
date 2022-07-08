//
//  ChangeDayTimeButton.swift
//  Stormchaser
//
//  Created by neo on 2022/07/08.
//

import SwiftUI

struct ChangeDayTimeButton: View {
    
    var title: String
    var background: Color
    var textColor: Color
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(.white)
            .font(.system(size: 20,
                          weight: .semibold,
                          design: .default))
            .foregroundColor(.blue)
            .cornerRadius(10)
    }
}
