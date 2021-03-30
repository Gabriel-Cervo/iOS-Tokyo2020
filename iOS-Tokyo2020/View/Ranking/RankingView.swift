//
//  RankingView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct RankingView: View {
    @State var searchText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                SearchBar(text: $searchText)
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
