//
//  ScheduleList.swift
//  iOS-Tokyo2020
//
//  Created by Santiago del Castillo Gonzaga on 29/03/21.
//

import SwiftUI

var game1: Game = IndividualGame(athletes: [], sport: golf, date: Date(), description: "Men's Individual Stroke Play Round 1", score: [], duration: 90)

var game2: Game = IndividualGame(athletes: [], sport: golf, date: Date(), description: "Men's Individual Stroke Play Round 1", score: [], duration: 80)

var game3: Game = IndividualGame(athletes: [], sport: golf, date: Date(), description: "Men's Individual Stroke Play Round 1", score: [], duration: 70)

var golf: Sport = Sport(color: .blue, name: "Golf", gamesSchedule: [game1, game1, game1], modalities: [], sportType: .individual, sliderImages: [], athletes: [], teams: [])

struct ScheduleList: View {
    //var sport: Sport
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
            
                ZStack {
                    Rectangle()
                        .frame(width: 317, height: 122)
                        .cornerRadius(14)
                        .foregroundColor(Color(red: 147 / 255, green: 185 / 255, blue: 226 / 255))
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 86, height: 90)
                                .cornerRadius(14)
                                .foregroundColor(.white)
                            VStack(alignment: .leading) {
                                Text("Friday")
                                    .font(.caption)
                                    .fontWeight(.light)
                                Text("29")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                Text("JULY")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .padding(.top, -15)
                            }
                            .padding(.trailing)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("7:30 - 15:30")
                                .font(.caption2)
                                .fontWeight(.thin)
                                .padding(.bottom, 1)
                            Text("Men's Individual")
                                .fontWeight(.bold)
                            Text("Stroke Play Round 1")
                                .fontWeight(.bold)
                                .padding(.bottom)
                        }
                        
                        Spacer()
                    }.frame(width: 281, height: 100)
                }.padding(.vertical, 5)
            }
        }
    }

struct ScheduleList_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleList()
    }
}
