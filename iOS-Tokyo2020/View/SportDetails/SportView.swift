//
//  SportView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct SportView: View {
    var body: some View {
        ScrollView {
            VStack {
                SportImageView(image: Image("1200px-Flag_of_the_Czech_Republic.svg"))
                
                SportDetailsContent()
                    .padding(20)
            }
        }
        .navigationBarTitle("TENNIS")
        .navigationBarHidden(false)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SportView_Previews: PreviewProvider {
    static var previews: some View {
        SportView()
    }
}
