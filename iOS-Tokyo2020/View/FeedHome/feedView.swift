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
            Text("Sports")
                .font(.system(size:18))
                .fontWeight(.semibold)//semibold ??? ou medium??
                .foregroundColor(Color(red: 32 / 255, green: 43 / 255, blue: 90 / 255))
            
            ScrollView( .horizontal, showsIndicators:false){
                HStack {
                    Image("2018-10-14-Tennis-Womens-Singles-1")
                        .resizable()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                        .frame(width: 83, height: 83)
                        .opacity(0.7)
                        .padding(3)
                        .foregroundColor(.blue)
                    
                    Image("21-08-2016-Basketball-7")
                        .resizable()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                        .frame(width: 83, height: 83)
                        .opacity(0.7)
                        .padding(3)
                    
                    Image("2018-10-09-beach volleyball-2")
                        .resizable()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                        .frame(width: 83, height: 83)
                        .opacity(0.7)
                        .padding(3)
                    
                    Image("04-08-2016-Football-Men-13")
                        .resizable()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                        .frame(width: 83, height: 83)
                        .opacity(0.7)
                        .padding(3)
                
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
