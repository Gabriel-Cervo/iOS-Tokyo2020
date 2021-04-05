//
//  AthletePreview.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct AthletePreview: View {
    var athleteName: String
    var athleteImageName: String
    var countryImageName: String
    var countryAbbreviation: String
    
    var body: some View {
        VStack {
            CircleImage(image: Image(athleteImageName), height: 80, width: 80)
            
            Text(athleteName)
                .font(.subheadline)
                .padding(.bottom, -5)
            
            HStack {
                Image(countryImageName)
                    .resizable()
                    .frame(width: 20, height: 14)
                    .padding(.trailing, -5)
                
                CustomFont(text: countryAbbreviation, fontSize: 11)
            }
        }
    }
}

struct AthletePreview_Previews: PreviewProvider {
    static var previews: some View {
        AthletePreview(athleteName: "Andy Murray", athleteImageName: "x4dwqfx5lne6cg78jkw3", countryImageName: "Bandeira-dos-Estados-Unidos-2000px", countryAbbreviation: "GBR")
    }
}
