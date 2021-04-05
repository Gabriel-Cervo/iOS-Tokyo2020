//
//  AthleteDetail.swift
//  iOS-Tokyo2020
//
//  Created by Santiago del Castillo Gonzaga on 29/03/21.
//

import SwiftUI

struct AthleteDetail: View {
    //var athlete: Athlete
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ZStack {
                    Image("tennisCapa")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea(edges: .top)
                    
                    
                    RoundedRectangle(cornerRadius: 0, style: .continuous)
                        .fill(Color(red: 240 / 255, green: 238 / 255, blue: 239 / 255))
                        .opacity(0.2)
                        .background((LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .bottom, endPoint: .top)))
                        .cornerRadius(14)
                }
                .frame(width: .infinity, height: 90)
                
                
                
                CircleImage(image: Image("serena"), height: 159, width: 159)
                
                
                HStack {
                    Text("SERENA WILLIAMS")
                        .font(.title3)
                        .fontWeight(.bold)
                    Image("EUA")
                        .resizable()
                        .frame(width: 19, height: 13)
                        .cornerRadius(2)
                }.padding(.bottom, -5)
                
                HStack {
                    Text("Tennis Player")
                        .font(.footnote)
                        .fontWeight(.thin)
                    Image("GoldMedal")
                        .resizable()
                        .frame(width: 15, height: 20)
                    Text("4")
                        .font(.footnote)
                }
                
                ZStack{
                    Rectangle()
                        .frame(width: .infinity, height: 75)
                        .foregroundColor(Color(red: 80 / 255, green: 141 / 255, blue: 208 / 255))
                    VStack {
                        Text("Olympic Games")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        Text("2000, 2008, 2012, 2016")
                            .font(.callout)
                            .foregroundColor(Color.white)
                    }
                }
                
                SectionTitle(title: "News")
                    .padding(.top, 10)
                    .padding(.bottom, 7)
                
                AthleteNewsView(news: news)
                
                SectionTitle(title: "Wins")
                    .padding(.top, 10)
                    .padding(.bottom, 7)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 305, height: 194, alignment: .center)
                        .foregroundColor(.white)
                    
                    VStack(alignment: .leading) {
                        HStack{
                            CustomFont(text: "Doubles Woman", fontSize: 10, fontWeight: .thin)
                                .padding(.leading, 90)
                            
                            CustomFont(text: "Single Woman", fontSize: 10, fontWeight: .thin)
                        }.padding(.top, -20)
                        
                        YearParticipation(title: "London 2012", Image1: "GoldMedal", Image2: "GoldMedal")
                        YearParticipation(title: "Beijing 2008", Image1: "GoldMedal", Image2: " ")
                        YearParticipation(title: "Sidney 2000", Image1: "GoldMedal", Image2: " ")
                    }
                }.background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(radius: 8))
            }
            .offset(y: -50)
        }
        .navigationBarHidden(false)
    }
}

struct AthleteDetail_Previews: PreviewProvider {
    static var previews: some View {
        AthleteDetail()
    }
}
