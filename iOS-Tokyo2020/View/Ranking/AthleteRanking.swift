//
//  AthleteRanking.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct AthleteRanking: View {
    var body: some View {
        ZStack {
            BackgroundRectangle(width: 280, height: 120, color: Color(red: 240 / 255, green: 240 / 255, blue: 240 / 255))
            
            HStack {
                CircleImage(image: Image("x4dwqfx5lne6cg78jkw3"), height: CGFloat(72), width: CGFloat(72))
                    .padding(.trailing, 10)
                
                VStack(alignment: .leading) {
                    HStack {
                        CustomFont(text: "Michael Phelps", fontSize: 18, fontWeight: .heavy)
                        
                        Image("Bandeira-dos-Estados-Unidos-2000px")
                            .resizable()
                            .frame(width: 19, height: 13)
                            .cornerRadius(3)
                            .padding(.trailing, -5)
                        
                        CustomFont(text: "USA", fontSize: 7, fontWeight: .thin)
                    }
                    
                    CustomFont(text: "Swimmer", fontSize: 12, fontWeight: .thin)
                        .padding(.top, -5)
                    
                    HStack {
                        MedalCounter(medal: "GoldMedal", numberOfWins: 23)
                        
                        MedalCounter(medal: "SilverMedal", numberOfWins: 3)
                        
                        MedalCounter(medal: "BronzeMedal", numberOfWins: 2)
                    }
                }
            }
        }
    }
}

struct AthleteRanking_Previews: PreviewProvider {
    static var previews: some View {
        AthleteRanking()
    }
}
