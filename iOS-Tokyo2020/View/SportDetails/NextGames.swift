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
                CustomFont(text: "Next Games", fontSize: 20, fontWeight: .heavy)
                    
                Spacer()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    AthleteGameView()
                    AthleteGameView()
                    AthleteGameView()
                    AthleteGameView()

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
