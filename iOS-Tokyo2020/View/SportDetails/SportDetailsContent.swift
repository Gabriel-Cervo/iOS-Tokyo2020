//
//  SportDetailsContent.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct SportDetailsContent: View {
    var body: some View {
        VStack {
            FeaturedAthletes()
            
            NextGames()
            
            SportResults()
        }
    }
}

struct SportDetailsContent_Previews: PreviewProvider {
    static var previews: some View {
        SportDetailsContent()
    }
}
