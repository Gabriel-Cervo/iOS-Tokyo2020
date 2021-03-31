//
//  FilterBar.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

enum FilterOptions: String {
    case Athletes
    case Ranking
    case Sports
    case Teams
    case Sponsorship
}

struct FilterBar: View {
    @Binding var activeFilter: FilterOptions
    
    var rectangleOffsets: [FilterOptions: Int] = [.Athletes: -135, .Ranking : -70, .Sports: -8, .Teams: 45, .Sponsorship: 120]
    
    var onButtonClick: (_ buttonTitle: String) -> Void
    
    let gradientColors: [Color] = [
        Color(red: 32 / 255, green: 43 / 255, blue: 90 / 255),
        Color(red: 58 / 255, green: 127 / 255, blue: 202 / 255),
        Color(red: 46 / 255, green: 170 / 255, blue: 70 / 255),
        Color(red: 248 / 255, green: 169 / 255, blue: 29 / 255),
        Color(red: 237 / 255, green: 30 / 255, blue: 74 / 255)
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            VStack {
                HStack(spacing: 15) {
                    FilterButton(title: "Athletes", onClick: onButtonClick)
                    FilterButton(title: "Ranking", onClick: onButtonClick)
                    FilterButton(title: "Sports", onClick: onButtonClick)
                    FilterButton(title: "Teams", onClick: onButtonClick)
                    FilterButton(title: "Sponsorship", onClick: onButtonClick)
                }
                
                Rectangle()
                    .frame(width: 52, height: 3)
                    .foregroundColor(.clear)
                    .background(LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .leading, endPoint: .trailing))
                    .offset(x: CGFloat(rectangleOffsets[activeFilter]!))
                    .animation(.easeIn(duration: 0.25))
            }
            
        }
    }
}

struct FilterBar_Previews: PreviewProvider {
    static var previews: some View {
        FilterBar(activeFilter: Binding.constant(FilterOptions.Athletes), onButtonClick: { buttonTitle in })
    }
}
