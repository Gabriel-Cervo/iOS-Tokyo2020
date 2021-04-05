//
//  AthleteRanking.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct AthleteRanking: View {
    var athleteImageName: String
    var athleteName: String
    var countryAbreviation: String
    var countryIconName: String
    var athleteCategory: String
    var medals: [String: Int]
    
    
    var body: some View {
        ZStack {
            BackgroundRectangle(width: 350, height: 120, color: Color(red: 240 / 255, green: 240 / 255, blue: 240 / 255))
            
            HStack {
                CircleImage(image: Image(athleteImageName), height: CGFloat(65), width: CGFloat(65))
                    .padding(.trailing, 10)
                
                VStack(alignment: .leading) {
                    HStack {
                        CustomFont(text: athleteName.uppercased(), fontSize: 15, fontWeight: .heavy)
                        
                        Image(countryIconName)
                            .resizable()
                            .frame(width: 19, height: 13)
                            .cornerRadius(3)
                            .padding(.trailing, -5)
                        
                        CustomFont(text: countryAbreviation, fontSize: 7, fontWeight: .thin)
                    }
                    .frame(width: 200, alignment: .leading)
                    
                    CustomFont(text: athleteCategory, fontSize: 12, fontWeight: .thin)
                        .padding(.top, -5)
                    
                    HStack {
                        MedalCounter(medal: "GoldMedal", numberOfWins: medals["Gold"] ?? 0)
                        
                        MedalCounter(medal: "SilverMedal", numberOfWins: medals["Silver"] ?? 0)
                        
                        MedalCounter(medal: "BronzeMedal", numberOfWins: medals["Bronze"] ?? 0)
                    }
                }
            }
        }
    }
}

struct AthleteRanking_Previews: PreviewProvider {
    static var previews: some View {
        AthleteRanking(athleteImageName: "MichaelPhelpsNatação_facebook", athleteName: "Michael Phelps", countryAbreviation: "USA", countryIconName: "Bandeira-dos-Estados-Unidos-2000px", athleteCategory: "Swimmer", medals: ["Gold": 23, "Silver": 3, "Bronze": 2])
    }
}
