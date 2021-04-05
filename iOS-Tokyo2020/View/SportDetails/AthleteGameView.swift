//
//  AthleteGameView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct AthleteGameView: View {
    var date: String
    var firstAthleteName: String
    var firstAthleteImageName: String
    var secondAthleteName: String
    var secondAthleteImageName: String
    
    
    var body: some View {
        ZStack {
            BackgroundRectangle(width: 180, height: 140, color: Color(red: 240 / 255, green: 240 / 255, blue: 240 / 255))
        
            VStack {
                CustomFont(text: date, fontSize: 15)
                    .padding(.bottom, 5)
                
                HStack {
                    AthleteMiniPreview(imageName: firstAthleteImageName, athleteName: firstAthleteName)
                    
                    Text("X")
                        .padding(10)
                    
                    AthleteMiniPreview(imageName: secondAthleteImageName, athleteName: secondAthleteName)
                }
   
            }
            .padding()
        }
    }
}

struct AthleteGameView_Previews: PreviewProvider {
    static var previews: some View {
        AthleteGameView(date: "JUL 26 - 7 pm", firstAthleteName: "Nadal", firstAthleteImageName: "20190116-nadal-ebden-day-3-009_g_fixed_big", secondAthleteName: "Murray", secondAthleteImageName: "x4dwqfx5lne6cg78jkw3")
    }
}
