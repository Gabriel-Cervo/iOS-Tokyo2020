//
//  SportView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct SportView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                SportImageView(image: Image("1200px-Flag_of_the_Czech_Republic.svg"))
                
                VStack {
                    HStack {
                        Text("Featured Athletes")
                            .font(.custom("SF Compact Display", size: 17))
                            .fontWeight(.heavy)
                        Spacer()
                        Text("See all")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            FeaturedAthletes()
                            FeaturedAthletes()
                            FeaturedAthletes()
                            FeaturedAthletes()
                            FeaturedAthletes()

                        }
                    }
                }
                .padding(20)
                .padding(.top, 60)
            }
        }
    }
}

struct SportView_Previews: PreviewProvider {
    static var previews: some View {
        SportView()
    }
}
