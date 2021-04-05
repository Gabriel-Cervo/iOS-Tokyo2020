//
//  AthleteNewsView.swift
//  iOS-Tokyo2020
//
//  Created by Santiago del Castillo Gonzaga on 29/03/21.
//

import SwiftUI

var news: [SportNews] = [SportNews(title: "Serena Williams all set for title defences in Rio", imageName: "Serena Williams all set for title defences in Rio", content: "It was back in 2000 in Sydney that sister act Venus and Serena Williams won the first of their three Olympic women’s doubles titles, with older sibling Venus"), SportNews(title: "Serena Williams all set for title defences in Rio", imageName: "Serena Williams all set for title defences in Rio", content: "It was back in 2000 in Sydney that sister act Venus and Serena Williams won the first of their three Olympic women’s doubles titles, with older sibling Venus"), SportNews(title: "Serena Williams all set for title defences in Rio", imageName: "Serena Williams all set for title defences in Rio", content: "It was back in 2000 in Sydney that sister act Venus and Serena Williams won the first of their three Olympic women’s doubles titles, with older sibling Venus")]

struct AthleteNewsView: View {
    var news: [SportNews]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(news, id: \.title){ new in
                    ZStack {
                        
                        ZStack {
                            Image(new.title)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(20)
                         
                            RoundedRectangle(cornerRadius: 0, style: .continuous)
                                .fill(Color(red: 240 / 255, green: 238 / 255, blue: 239 / 255))
                                .opacity(0.2)
                                .background((LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)))
                                .cornerRadius(14)
                        }
                        .frame(width: 305, height: 165)

                        
                        
                        VStack {
                            Text(new.title)
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            
                            Text(new.content)
                                .font(.caption2)
                                .fontWeight(.light)
                                .foregroundColor(Color.white)
                                .lineLimit(2)
                            
                        }
                        .padding(.bottom, -35).frame(width: 280, height: 80, alignment: .bottomLeading)
                    }
                    .padding(.leading, 20.0)
                }
            }
            .padding(.leading)
        }
    }
}


struct AthleteNewsView_Previews: PreviewProvider {
    static var previews: some View {
        AthleteNewsView(news: news)
    }
}
