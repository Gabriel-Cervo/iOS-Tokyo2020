//
//  ResultsView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct ResultsView: View {
    var body: some View {
        ZStack {
            BackgroundRectangle(width: 180, height: 140, color: Color(.white))
            
            VStack {
                CustomFont(text: "SINGLES WOMAN", fontSize: 14, fontWeight: .heavy)
                    .padding(.bottom, 10)
                
                HStack {
                    AthleteMiniPreview()
                    
                    Text("Medal")
                }
            }
        }
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
