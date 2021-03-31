//
//  FeedImage.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 31/03/21.
//

import SwiftUI

struct FeedImage: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 1))
            .frame(width: 83, height: 83)
            .opacity(0.7)
            .padding(3)
    }
}

struct FeedImage_Previews: PreviewProvider {
    static var previews: some View {
        FeedImage(imageName: "2018-10-14-Tennis-Womens-Singles-1")
    }
}
