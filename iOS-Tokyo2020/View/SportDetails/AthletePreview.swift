//
//  AthletePreview.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct AthletePreview: View {
    var body: some View {
        VStack {
            CircleImage(image: Image("x4dwqfx5lne6cg78jkw3"), height: 80, width: 80)
            
            Text("Andy Murray")
                .font(.subheadline)
                .padding(.bottom, -5)
            
            HStack {
                Image("Bandeira-dos-Estados-Unidos-2000px")
                    .resizable()
                    .frame(width: 20, height: 14)
                    .padding(.trailing, -5)
                
                CustomFont(text: "GBR", fontSize: 11)
            }
        }
    }
}

struct AthletePreview_Previews: PreviewProvider {
    static var previews: some View {
        AthletePreview()
    }
}
