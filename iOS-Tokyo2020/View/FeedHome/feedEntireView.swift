//
//  feedEntireView.swift
//  iOS-Tokyo2020
//
//  Created by Hojin Ryu on 30/03/21.
//

import SwiftUI

struct feedEntireView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing:23) {
                Image("1200px-2020_Summer_Olympics_new_logo 4")
                    .resizable()
                    .frame(width:110, height: 37)
                
                feedView()
                    
                HappeningNow()
                    
                NewsView()
            }
        }
    }
}

struct feedEntireView_Previews: PreviewProvider {
    static var previews: some View {
        feedEntireView()
    }
}
