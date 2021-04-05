//
//  SportImageView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct SportImageView: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .border(Color.gray, width: 1)

            .frame(width: .infinity, height: 220)
    }
}

struct SportImageView_Previews: PreviewProvider {
    static var previews: some View {
        SportImageView(image: Image("Tennis-banner"))
    }
}
