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
                CustomFont(text: "Featured Athletes", fontSize: 20, fontWeight: .heavy)
                
                Spacer()
                
                Text("See all")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    AthletePreview()
                    AthletePreview()
                    AthletePreview()
                    AthletePreview()
                    AthletePreview()

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
