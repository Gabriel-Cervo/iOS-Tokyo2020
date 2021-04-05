//
//  MedalCounter.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct MedalCounter: View {
    var medal: String
    var numberOfWins: Int
    
    var body: some View {
        if(numberOfWins > 0) {
            HStack {
                Image(medal)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 10, height: 20)
                    .padding(.trailing, -2)
                
                CustomFont(text: "\(numberOfWins)", fontSize: 12, fontWeight: .thin)
            }
        }
    }
}

struct MedalCounter_Previews: PreviewProvider {
    static var previews: some View {
        MedalCounter(medal: "GoldMedal", numberOfWins: 6)
    }
}
