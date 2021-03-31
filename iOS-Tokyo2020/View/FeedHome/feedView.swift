//
//  feedView.swift
//  iOS-Tokyo2020
//
//  Created by Hojin Ryu on 29/03/21.
//

//.aspectRatio(contentMode: .fill)
//In the circle Views put this after resizable();

import SwiftUI

struct feedView: View {
    
    
    var body: some View {
        VStack(alignment:.leading, spacing:8) {
            CustomFont(text: "Sports", fontSize: 18, fontWeight: .heavy)
                .foregroundColor(Color(red: 32 / 255, green: 43 / 255, blue: 90 / 255))
            
            ScrollView( .horizontal, showsIndicators:false) {
                HStack {
                    
                    NavigationLink(destination: SportView()) {
                        FeedImage(imageName: "2018-10-14-Tennis-Womens-Singles-1")
                            .foregroundColor(.blue)
                    }
                    
                    FeedImage(imageName: "21-08-2016-Basketball-7")
                    
                    FeedImage(imageName: "2018-10-09-beach volleyball-2")
                    
                    FeedImage(imageName: "04-08-2016-Football-Men-13")
                
                }
                
            }
        }.offset(x: 29)
        
        
        
        
           
    }
}

struct feedView_Previews: PreviewProvider {
    static var previews: some View {
        feedView()
    }
}
