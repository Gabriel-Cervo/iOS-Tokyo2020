//
//  YearParticipation.swift
//  iOS-Tokyo2020
//
//  Created by Santiago del Castillo Gonzaga on 05/04/21.
//

import SwiftUI

struct YearParticipation: View {
    var title: String
    var Image1: String?
    var Image2: String?
        
    var body: some View {
        HStack{
            CustomFont(text: title, fontSize: 12, fontWeight: .bold)
                Image( Image1 ?? Image1!)
                    .resizable()
                    .frame(width: 20, height: 25)
                    .padding(.horizontal, 30)
                Image( Image2 ?? Image2!)
                    .resizable()
                    .frame(width: 20, height: 25)
                    .padding(.horizontal, 30)
        }
    }
}

struct YearParticipation_Previews: PreviewProvider {
    static var previews: some View {
        YearParticipation(title: "London 2012", Image1: "GoldMedal", Image2: "GoldMedal")
    }
}
