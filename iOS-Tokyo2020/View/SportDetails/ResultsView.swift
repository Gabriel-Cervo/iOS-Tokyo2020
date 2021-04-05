//
//  ResultsView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct ResultsView: View {
    var category: String
    var athleteName: String
    var athleteImageName: String
    
    var body: some View {
        ZStack {
            BackgroundRectangle(width: 180, height: 140, color: Color(.white))
            
            VStack {
                CustomFont(text: "SINGLES \(category)", fontSize: 14, fontWeight: .semibold)
                    .padding(.bottom, 10)
                
                HStack {
                    AthleteMiniPreview(imageName: athleteImageName, athleteName: athleteName)
                    
                    Image("GoldMedal")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25)
                        .padding(.top, -7)
                        .padding(.leading, 5)
                }
            }
        }
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView(category: "WOMAN", athleteName: "Serena Williams", athleteImageName: "serena-williams-promo-e1569012559666")
    }
}
