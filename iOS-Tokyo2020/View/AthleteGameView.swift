//
//  AthleteGameView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct AthleteGameView: View {
//    var date: Date
//    var firstAthlete: Athlete
//    var secondAthlete: Athlete
    
    var body: some View {
        VStack {
            CustomFont(text: "JUL 26 - 7 pm", fontSize: 17)
                .padding(.bottom, 5)
            
            HStack {
                AthleteMiniPreview()
                    .padding(.trailing)
                
                Text("X")
                    .padding(.trailing)
                
                AthleteMiniPreview()
            }
        }
        .frame(width: 200, height: 150, alignment: .center)
        .background(Color.init(red: 240.0, green: 240.0, blue: 240.0))
        .padding(15)
        .cornerRadius(14)
        .shadow(radius: 4)
    }
}

struct AthleteGameView_Previews: PreviewProvider {
    static var previews: some View {
        AthleteGameView()
    }
}
