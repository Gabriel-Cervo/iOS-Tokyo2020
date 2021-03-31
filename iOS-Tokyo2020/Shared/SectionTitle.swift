//
//  SectionTitle.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 31/03/21.
//

import SwiftUI

struct SectionTitle: View {
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.headline)
                .padding(.leading, 42)
            Spacer()
        }
    }
}

struct SectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitle(title: "Golf")
    }
}
