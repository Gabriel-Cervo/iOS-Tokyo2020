//
//  AthleteMiniPreview.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct AthleteMiniPreview: View {
    var imageName: String
    var athleteName: String
    
    var body: some View {
        VStack {
            CircleImage(image: Image(imageName), height: 42, width: 42)
            
            CustomFont(text: athleteName, fontSize: 10)
        }
    }
}

struct AthleteMiniPreview_Previews: PreviewProvider {
    static var previews: some View {
        AthleteMiniPreview(imageName: "x4dwqfx5lne6cg78jkw3", athleteName: "Murray")
    }
}
