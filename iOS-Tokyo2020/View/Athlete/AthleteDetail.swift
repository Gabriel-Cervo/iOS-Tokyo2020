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
            Image("tennisCapa")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity, height: 75)
                .ignoresSafeArea(edges: .top)
                .brightness(-0.5)
                .saturation(1.3)
                .contrast(0.45)
            
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
                Image("Gold")
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
                    .frame(width: 305, height: 194, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }.background(RoundedRectangle(cornerRadius: 20).fill(Color.white).shadow(radius: 8))
            
        }
        .navigationBarTitle("Athlete Details")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(false)
        .navigationBarBackButtonHidden(false)
    }
}

struct AthleteDetail_Previews: PreviewProvider {
    static var previews: some View {
        AthleteDetail()
    }
}
