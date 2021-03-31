//
//  CircleImage.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var height: CGFloat
    var width: CGFloat
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 1))
    }   
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("x4dwqfx5lne6cg78jkw3"), height: 83, width: 83)
    }
}
