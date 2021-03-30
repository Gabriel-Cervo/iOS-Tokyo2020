//
//  FilterButton.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct FilterButton: View {
    @Binding var selectedFilter: FilterOptions
    
    var isSelected: Bool {
        return selectedFilter.rawValue == title
    }
    
    var title: String
    var onClick: (_ buttonTitle: String) -> Void
    
    var gradientColors: [Color] = [
        Color(red: 32 / 255, green: 43 / 255, blue: 90 / 255),
        Color(red: 58 / 255, green: 127 / 255, blue: 202 / 255),
        Color(red: 46 / 255, green: 170 / 255, blue: 70 / 255),
        Color(red: 248 / 255, green: 169 / 255, blue: 29 / 255),
        Color(red: 237 / 255, green: 30 / 255, blue: 74 / 255)
    ]
    
    var body: some View {
        VStack {
            Button(title) {
                onClick(title)
            }
                .font(.custom("SF Compact Display", size: 14))
                .foregroundColor(.black)
            .padding(.bottom, -3)
                
            if (isSelected) {
                Rectangle()
                    .frame(width: 52, height: 3)
                    .foregroundColor(.clear)
                    .background(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .leading, endPoint: .trailing))
            } else {
                Rectangle()
                    .frame(width: 52, height: 3)
                    .foregroundColor(.clear)
            }
            
        }

    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton(selectedFilter: Binding.constant(FilterOptions.Athletes), title: "Athletes", onClick: { buttonTitle in  })
    }
}
