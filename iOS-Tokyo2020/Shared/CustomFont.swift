//
//  CustomFont.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct CustomFont: View {
    var text: String
    var fontSize: Int
    var fontWeight: Font.Weight?
    
    var body: some View {
        Text(text)
            .font(.system(size: CGFloat(fontSize)))
            .fontWeight(fontWeight ?? .light)
    }
}

struct CustomFont_Previews: PreviewProvider {
    static var previews: some View {
        CustomFont(text: "Teste", fontSize: 10)
    }
}
