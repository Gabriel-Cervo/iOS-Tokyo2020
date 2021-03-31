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
                    .padding(.top, 20)
                
                SportDetailsContent()
                    .padding(20)
            }
        }
        .navigationBarHidden(false)
        .toolbar {
            ToolbarItem(placement: .principal) {
                CustomFont(text: "TENNIS", fontSize: 30, fontWeight: .heavy)
                    .padding(.top, 10)
            }
        }
    }
}

struct SportView_Previews: PreviewProvider {
    static var previews: some View {
        SportView()
    }
}
