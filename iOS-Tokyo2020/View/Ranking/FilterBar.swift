//
//  FilterBar.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

enum FilterOptions: String {
    case Athletes
    case Ranking
    case Sports
    case Teams
    case Sponsorship
}

struct FilterBar: View {
    @Binding var activeFilter: FilterOptions
    var onButtonClick: (_ buttonTitle: String) -> Void
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 15) {
                FilterButton(selectedFilter: $activeFilter, title: "Athletes", onClick: onButtonClick)
                FilterButton(selectedFilter: $activeFilter, title: "Ranking", onClick: onButtonClick)
                FilterButton(selectedFilter: $activeFilter, title: "Sports", onClick: onButtonClick)
                FilterButton(selectedFilter: $activeFilter, title: "Teams", onClick: onButtonClick)
                FilterButton(selectedFilter: $activeFilter, title: "Sponsorship", onClick: onButtonClick)
            }
        }
    }
}

struct FilterBar_Previews: PreviewProvider {
    static var previews: some View {
        FilterBar(activeFilter: Binding.constant(FilterOptions.Athletes), onButtonClick: { buttonTitle in })
    }
}
