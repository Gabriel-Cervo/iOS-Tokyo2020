//
//  RankingView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct RankingView: View {
    @State var searchText: String = ""
    @State var activeFilter: FilterOptions = .Athletes
    
    func onButtonClick(_ buttonTitle: String) {
        activeFilter = FilterOptions.init(rawValue: buttonTitle)!
    }
    
    var body: some View {
        ScrollView {
            VStack {
                SearchBar(text: $searchText)
                
                FilterBar(activeFilter: $activeFilter, onButtonClick: onButtonClick)
                    .padding()
                    .padding(.leading, 20)
                
                AthleteRankingRow()
                    .padding(.top, 10)
            }
            .padding()
        }
    }
}

struct RankingView_Previews: PreviewProvider {
    static var previews: some View {
        RankingView()
    }
}
