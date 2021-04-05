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
                SportImageView(image: Image("Tennis-banner"))
                    .padding(.top, -20)
                
                SportDetailsContent()
                    .padding(.horizontal, 20)
                    .padding(.leading, 120)
            }
        }
        .navigationBarHidden(false)
        .toolbar {
            ToolbarItem(placement: .principal) {
                CustomFont(text: "TENNIS", fontSize: 25, fontWeight: .semibold)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
            }
        }
    }
}

struct SportView_Previews: PreviewProvider {
    static var previews: some View {
        SportView()
    }
}
