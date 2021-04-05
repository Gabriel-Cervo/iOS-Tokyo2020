//
//  FeaturedAthletesView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct FeaturedAthletes: View {
    var body: some View {
        VStack {
            HStack(spacing: 20) {
                CustomFont(text: "Featured Athletes", fontSize: 20, fontWeight: .semibold)
                
                Spacer()
                
                Text("See all")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    NavigationLink(destination: AthleteDetail()) {
                        AthletePreview(athleteName: "Serena Williams", athleteImageName: "serena-williams-promo-e1569012559666", countryImageName: "Bandeira-dos-Estados-Unidos-2000px", countryAbbreviation: "USA")
                    }
                    .foregroundColor(.black)
                    
                    NavigationLink(destination: AthleteDetail()) {
                        AthletePreview(athleteName: "Rafael Nadal", athleteImageName: "20190116-nadal-ebden-day-3-009_g_fixed_big", countryImageName: "significado-e-origem-da-bandeira-da-espanha-1-1200x675.jpg", countryAbbreviation: "ESP")
                    }
                    .foregroundColor(.black)
                    
                    NavigationLink(destination: AthleteDetail()) {
                        AthletePreview(athleteName: "Andy Murray", athleteImageName: "x4dwqfx5lne6cg78jkw3", countryImageName: "290px-Flag_of_the_United_Kingdom.svg", countryAbbreviation: "GBR")
                    }
                    .foregroundColor(.black)
                    
                    NavigationLink(destination: AthleteDetail()) {
                        AthletePreview(athleteName: "Monica Puig", athleteImageName: "monica-puig_1024-768", countryImageName: "1200px-Flag_of_Puerto_Rico.svg", countryAbbreviation: "PUR")
                    }
                    .foregroundColor(.black)
                    
                    NavigationLink(destination: AthleteDetail()) {
                        AthletePreview(athleteName: "Andy Murray", athleteImageName: "x4dwqfx5lne6cg78jkw3", countryImageName: "290px-Flag_of_the_United_Kingdom.svg", countryAbbreviation: "GBR")
                    }
                    .foregroundColor(.black)
                }
            }
        }
        .padding(.top, 60)
    }
}

struct FeaturedAthletes_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedAthletes()
    }
}
