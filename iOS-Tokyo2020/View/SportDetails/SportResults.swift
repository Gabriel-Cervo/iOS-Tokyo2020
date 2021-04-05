//
//  SportResults.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct SportResults: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                CustomFont(text: "Results", fontSize: 20, fontWeight: .semibold)
                    
                Spacer()
            }
            
            HStack(spacing: 20) {
                ResultsView(category: "WOMAN", athleteName: "Serena Williams", athleteImageName: "serena-williams-promo-e1569012559666")
                ResultsView(category: "MEN", athleteName: "Rafael Nadal", athleteImageName: "20190116-nadal-ebden-day-3-009_g_fixed_big")
            }
        }
        .padding(.top, 15)
    }
}

struct SportResults_Previews: PreviewProvider {
    static var previews: some View {
        SportResults()
    }
}
