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
        ZStack {
            BackgroundRectangle(width: 180, height: 140, color: Color(red: 240 / 255, green: 240 / 255, blue: 240 / 255))
        
            VStack {
                CustomFont(text: "JUL 26 - 7 pm", fontSize: 15)
                    .padding(.bottom, 5)
                
                HStack {
                    AthleteMiniPreview()
                    
                    Text("X")
                        .padding(10)
                    
                    AthleteMiniPreview()
                }
   
            }
            .padding()
        }
    }
}

struct AthleteGameView_Previews: PreviewProvider {
    static var previews: some View {
        AthleteGameView()
    }
}
