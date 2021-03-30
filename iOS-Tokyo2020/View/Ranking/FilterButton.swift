//
//  FilterButton.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct FilterButton: View {
    var title: String
    var onClick: (_ buttonTitle: String) -> Void
    
    var body: some View {
        VStack {
            Button(title) {
                onClick(title)
            }
                .font(.custom("SF Compact Display", size: 14))
                .foregroundColor(.black)
            .padding(.bottom, -3)
        }
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton(title: "Athletes", onClick: { buttonTitle in  })
    }
}
