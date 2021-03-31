//
//  SportResults.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct SportResults: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                CustomFont(text: "Results", fontSize: 20, fontWeight: .heavy)
                    
                Spacer()
            }
            
            HStack(spacing: 20) {
                ResultsView()
                ResultsView()
            }
        }
        .padding(.top, 15)
    }
}

struct SportResults_Previews: PreviewProvider {
    static var previews: some View {
        SportResults()
    }
}
