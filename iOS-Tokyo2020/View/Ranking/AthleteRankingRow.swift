//
//  AthleteRankingRow.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct AthleteRankingRow: View {
    var body: some View {
        VStack(spacing: 30) {
            NavigationLink(destination: AthleteDetail()) {
                AthleteRanking(athleteImageName: "MichaelPhelpsNatação_facebook", athleteName: "Michael Phelps", countryAbreviation: "USA", countryIconName: "Bandeira-dos-Estados-Unidos-2000px", athleteCategory: "Swimmer", medals: ["Gold": 23, "Silver": 3, "Bronze": 2])
            }
            .foregroundColor(.black)
            
            NavigationLink(destination: AthleteDetail()) {
                AthleteRanking(athleteImageName: "15-08-2016-Equestrian-Dressage-Individual-Mixed-6", athleteName: "Isabel Werth", countryAbreviation: "GER", countryIconName: "Bandeira-da-Alemanha-2000px", athleteCategory: "Equestrian / Dressage", medals: ["Gold": 6, "Silver": 4, "Bronze": 0])
            }
            .foregroundColor(.black)

            
            NavigationLink(destination: AthleteDetail()) {
                AthleteRanking(athleteImageName: "usain", athleteName: "Usain Bolt", countryAbreviation: "JAM", countryIconName: "jamaica", athleteCategory: "Athletics", medals: ["Gold": 8, "Silver": 0, "Bronze": 0])
            }
            .foregroundColor(.black)

            
            NavigationLink(destination: AthleteDetail()) {
                AthleteRanking(athleteImageName: "serena-williams-promo-e1569012559666", athleteName: "Serena WIlliams", countryAbreviation: "USA", countryIconName: "Bandeira-dos-Estados-Unidos-2000px", athleteCategory: "Swimmer", medals: ["Gold": 4, "Silver": 0, "Bronze": 0])
            }
            .foregroundColor(.black)

            
            NavigationLink(destination: AthleteDetail()) {
                AthleteRanking(athleteImageName: "arthur-zanetti", athleteName: "Arthur Zanetti", countryAbreviation: "BRA", countryIconName: "Flag_of_Brazil 1", athleteCategory: "Swimmer", medals: ["Gold": 1, "Silver": 1, "Bronze": 0])
            }
            .foregroundColor(.black)

            
            NavigationLink(destination: AthleteDetail()) {
                AthleteRanking(athleteImageName: "MichaelPhelpsNatação_facebook", athleteName: "Michael Phelps", countryAbreviation: "USA", countryIconName: "Bandeira-dos-Estados-Unidos-2000px", athleteCategory: "Swimmer", medals: ["Gold": 23, "Silver": 3, "Bronze": 2])
            }
            .foregroundColor(.black)

            
            NavigationLink(destination: AthleteDetail()) {
                AthleteRanking(athleteImageName: "15-08-2016-Equestrian-Dressage-Individual-Mixed-6", athleteName: "Isabel Werth", countryAbreviation: "GER", countryIconName: "Bandeira-da-Alemanha-2000px", athleteCategory: "Equestrian / Dressage", medals: ["Gold": 6, "Silver": 4, "Bronze": 0])
            }
            .foregroundColor(.black)

        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct AthleteRankingRow_Previews: PreviewProvider {
    static var previews: some View {
        AthleteRankingRow()
    }
}
