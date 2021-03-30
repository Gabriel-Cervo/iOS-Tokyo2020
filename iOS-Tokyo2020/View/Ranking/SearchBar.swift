//
//  SearchBar.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 30/03/21.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        ZStack {
            BackgroundRectangle(width: 304, height: 32, color: Color(red: 240 / 255, green: 240 / 255, blue: 240 / 255))
            
            HStack {
                Image(systemName: "magnifyingglass")
                
                TextField("", text: $text)
            }
            .frame(width: 280, height: 30)
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: Binding.constant("a"))
    }
}
