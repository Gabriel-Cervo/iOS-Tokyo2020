//
//  NextGames.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct NextGames: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                CustomFont(text: "Next Games", fontSize: 20, fontWeight: .semibold)
                    
                Spacer()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    AthleteGameView(date: "JUL 26 - 7 pm", firstAthleteName: "Nadal", firstAthleteImageName: "20190116-nadal-ebden-day-3-009_g_fixed_big", secondAthleteName: "Murray", secondAthleteImageName: "x4dwqfx5lne6cg78jkw3")
                    
                    AthleteGameView(date: "JUL 27 - 6 pm", firstAthleteName: "Williams", firstAthleteImageName: "serena-williams-promo-e1569012559666", secondAthleteName: "Puig", secondAthleteImageName: "monica-puig_1024-768")
                    
                    AthleteGameView(date: "JUL 27 - 8 pm", firstAthleteName: "Nadal", firstAthleteImageName: "20190116-nadal-ebden-day-3-009_g_fixed_big", secondAthleteName: "Murray", secondAthleteImageName: "x4dwqfx5lne6cg78jkw3")
                }
                .padding(5)
            }
        }
        .padding(.top, 30)
    }
}

struct NextGames_Previews: PreviewProvider {
    static var previews: some View {
        NextGames()
    }
}
