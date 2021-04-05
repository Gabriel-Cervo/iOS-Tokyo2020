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

var golf: Sport = Sport(color: .blue, name: "Golf", iconName: "Golf", gamesSchedule: [game1, game1, game1], modalities: [], sportType: .individual, sliderImages: [], athletes: [], teams: [])

struct ScheduleList: View {
    //var sport: Sport
    
    var body: some View {
        ScrollView(showsIndicators: false){
            
                ZStack {
                    BackgroundRectangle(width: 317, height: 122, color: Color(red: 147 / 255, green: 185 / 255, blue: 226 / 255), shadow: 0)
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 86, height: 90)
                                .cornerRadius(14)
                                .foregroundColor(.white)
                            VStack(alignment: .leading) {
                                CustomFont(text: "Friday", fontSize: 12, fontWeight: .light)
                                    .foregroundColor(.secondary)
                                
                                CustomFont(text: "29", fontSize: 38, fontWeight: .heavy)
                                
                                CustomFont(text: "JULY", fontSize: 18, fontWeight: .heavy)
                                    .padding(.top, -15)
                            }
                            .padding(.trailing)
                        }
                        
                        VStack(alignment: .leading) {
                            CustomFont(text: "7:30 - 15:30", fontSize: 12, fontWeight: .thin)
                                .foregroundColor(.secondary)
                                .padding(.bottom, 1)
                            
                            CustomFont(text: "Men's Individual", fontSize: 18, fontWeight: .bold)

                            CustomFont(text: "Stroke Play Round 1", fontSize: 18, fontWeight: .heavy)
                                .padding(.bottom)
                        }
                        
                        Spacer()
                    }
                    .frame(width: 281, height: 100)
                }
                .padding(.vertical, 5)
            }
        }
    }

struct ScheduleList_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleList()
    }
}
