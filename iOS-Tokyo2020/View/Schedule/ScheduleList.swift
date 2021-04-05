//
//  ScheduleList.swift
//  iOS-Tokyo2020
//
//  Created by Santiago del Castillo Gonzaga on 29/03/21.
//

import SwiftUI

struct ScheduleList: View {
    var day: String
    var month: String
    var dayOfWeek: String
    var hour: String
    var title1: String
    var title2: String
    var color: Color
    
    var body: some View {
        ScrollView(showsIndicators: false){
            
                ZStack {
                    BackgroundRectangle(width: 317, height: 122, color: color, shadow: 0)
                    
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 86, height: 90)
                                .cornerRadius(14)
                                .foregroundColor(.white)
                            VStack(alignment: .leading) {
                                CustomFont(text: "Friday", fontSize: 12, fontWeight: .light)
                                    .foregroundColor(.secondary)
                                
                                CustomFont(text: day, fontSize: 38, fontWeight: .bold)
                                
                                CustomFont(text: month, fontSize: 18, fontWeight: .bold)
                                    .padding(.top, -15)
                            }
                            .padding(.trailing)
                        }
                        
                        VStack(alignment: .leading) {
                            CustomFont(text: hour, fontSize: 12, fontWeight: .thin)
                                .foregroundColor(.secondary)
                                .padding(.bottom, 1)
                            
                            CustomFont(text: title1, fontSize: 18, fontWeight: .semibold)

                            CustomFont(text: title2, fontSize: 18, fontWeight: .bold)
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
        ScheduleList(day: "29", month: "JULY", dayOfWeek: "Thursday", hour: "7:30 - 15:30", title1: "Men's Individual", title2: "Stroke Play Round 1", color: Color(red: 147 / 255, green: 185 / 255, blue: 226 / 255))
    }
}
