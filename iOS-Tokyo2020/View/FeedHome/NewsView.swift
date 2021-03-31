//
//  NewsView.swift
//  iOS-Tokyo2020
//
//  Created by Hojin Ryu on 30/03/21.
//

import SwiftUI



struct NewsView: View {
    
    var body: some View {
        VStack(alignment:.leading, spacing:8) {
            Text("News")
                .font(.system(size:18))
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 32 / 255, green: 43 / 255, blue: 90 / 255))
            
            VStack(spacing:17) {
                ZStack {
                    ZStack {
                        Image("2020-05-06-WHO-thumbnail")
                            .resizable()
                            .cornerRadius(14)
                            .frame(width:316, height: 188)
                            .clipShape(Rectangle())
                            
                        RoundedRectangle(cornerRadius: 0, style: .continuous)
                            .fill(Color(red: 240 / 255, green: 238 / 255, blue: 239 / 255))
                            .frame(width: 316, height: 188)
                            .opacity(0.2)
                            .background((LinearGradient(gradient: Gradient(colors: [.clear,.black]), startPoint: .top, endPoint: .bottom)))
                            .cornerRadius(14)
                    }
                    VStack() {
                        Text("Which athletes are qualified for the Tokyo Olympics?")
                            .font(.system(size:11))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .offset(y:60)
                        
                        Text("While we wait and see if Simon Biles, Noah Lyles and Katie Ledecky qualify for ...")
                            .font(.system(size:7))
                            .foregroundColor(Color.white)
                            .offset(y:60)
                    }
                }
                ZStack {
                    ZStack {
                        Image("revezamento-da-tocha-olimpica")
                            .resizable()
                            .cornerRadius(14)
                            .frame(width:316, height: 188)
                            .clipShape(Rectangle())
                        RoundedRectangle(cornerRadius: 0, style: .continuous)
                            .fill(Color(red: 240 / 255, green: 238 / 255, blue: 239 / 255))
                            .frame(width: 316, height: 188)
                            .opacity(0.2)
                            .background((LinearGradient(gradient: Gradient(colors: [.clear,.black]), startPoint: .top, endPoint: .bottom)))
                            .cornerRadius(14)
                    }
                    VStack {
                        Text("Which athletes are qualified for the Tokyo Olympics?")
                            .font(.system(size:11))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .offset(y:60)
                        
                        Text("While we wait and see if Simon Biles, Noah Lyles and Katie Ledecky qualify for ...")
                            .font(.system(size:7))
                            .foregroundColor(Color.white)
                            .offset(y:60)
                    }
                }
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
