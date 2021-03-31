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
            AthleteRanking()
            AthleteRanking()
            AthleteRanking()
            AthleteRanking()
            AthleteRanking()
            AthleteRanking()
            AthleteRanking()

        }
    }
}

struct AthleteRankingRow_Previews: PreviewProvider {
    static var previews: some View {
        AthleteRankingRow()
    }
}
