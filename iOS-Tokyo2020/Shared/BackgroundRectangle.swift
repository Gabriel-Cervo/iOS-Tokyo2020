//
//  BackgroundRectangle.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct BackgroundRectangle: View {
    var width: Int
    var height: Int
    var color: Color
    var shadow: Int?
    
    var body: some View {
        Rectangle()
                .frame(width: CGFloat(width), height: CGFloat(height))
                .foregroundColor(color)
                .cornerRadius(14)
                .shadow(radius: CGFloat(shadow ?? 4))
    }
}

struct BackgroundRectangle_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundRectangle(width: 140, height: 85, color: Color(red: 240 / 255, green: 240 / 255, blue: 240 / 255), shadow: 5)
    }
}
