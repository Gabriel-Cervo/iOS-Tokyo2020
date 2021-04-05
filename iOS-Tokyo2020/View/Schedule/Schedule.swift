//
//  Schedule.swift
//  iOS-Tokyo2020
//
//  Created by Santiago del Castillo Gonzaga on 29/03/21.
//

import SwiftUI

struct Schedule: View {
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
            ZStack {
                CustomFont(text: "SCHEDULE", fontSize: 28, fontWeight: .bold)
                
                HStack {
                    Spacer()
                    ZStack {
                        Rectangle()
                            .frame(width: 54, height: 34)
                            .cornerRadius(14)
                            .foregroundColor(Color(red: 240 / 255, green: 238 / 255, blue: 238 / 255))
                        
                        Image(systemName: "calendar")
                    }
                }
                .padding(.trailing, 40)
                    
            }
            .padding(.vertical)
            
            VStack {
                SectionTitle(title: "GOLF")
            
            
            ScheduleList(day: "29", month: "JULY", dayOfWeek: "Thursday", hour: "7:30 - 15:30", title1: "Men's Individual", title2: "Stroke Play Round 1", color: Color(red: 147 / 255, green: 185 / 255, blue: 226 / 255))
            ScheduleList(day: "30", month: "JULY", dayOfWeek: "Friday", hour: "7:30 - 15:30", title1: "Men's Individual", title2: "Stroke Play Round 2", color: Color(red: 147 / 255, green: 185 / 255, blue: 226 / 255))
            ScheduleList(day: "31", month: "JULY", dayOfWeek: "Saturday", hour: "7:30 - 15:30", title1: "Men's Individual", title2: "Stroke Play Round 3", color: Color(red: 147 / 255, green: 185 / 255, blue: 226 / 255))
            
            SectionTitle(title: "JUDO")
            
            ScheduleList(day: "26", month: "JULY", dayOfWeek: "Friday", hour: "17:00 - 19:40", title1: "Women Semifinals", title2: " ", color: Color(red: 89 / 255, green: 180 / 255, blue: 102 / 255, opacity: 0.46))
            ScheduleList(day: "28", month: "JULY", dayOfWeek: "Sunday", hour: "18:30 - 20:30", title1: "Women Semifinals", title2: " ", color: Color(red: 89 / 255, green: 180 / 255, blue: 102 / 255, opacity: 0.46))
            
            SectionTitle(title: "FOOTBALL")

            ScheduleList(day: "02", month: "August", dayOfWeek: "Friday", hour: "17:00 - 18:45", title1: "Women Semifinals 1", title2: "Brasil x EUA", color: Color(red: 171 / 255, green: 169 / 255, blue: 76 / 255))
            ScheduleList(day: "02", month: "August", dayOfWeek: "Friday", hour: "19:00 - 20:45", title1: "Women Semifinals 2", title2: "Germany X France", color: Color(red: 171 / 255, green: 169 / 255, blue: 76 / 255))
            }
        }
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}
