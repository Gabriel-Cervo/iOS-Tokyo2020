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
            .frame(height: 205, alignment: .center)
    }
}

struct SportImageView_Previews: PreviewProvider {
    static var previews: some View {
        SportImageView(image: Image("1200px-Flag_of_the_Czech_Republic.svg"))
    }
}
