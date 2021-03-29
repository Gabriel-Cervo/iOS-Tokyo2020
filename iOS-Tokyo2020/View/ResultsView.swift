//
//  ResultsView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import SwiftUI

struct ResultsView: View {
    var body: some View {
        VStack {
            CustomFont(text: "SINGLES WOMAN", fontSize: 14, fontWeight: .heavy)
                .padding(.bottom, 10)
            
            HStack {
                AthleteMiniPreview()
                
                Text("Medal")
            }
        }
        .frame(width: 130, height: 100, alignment: .center)
        .padding(25)
        .background(Color.init(red: 240.0, green: 240.0, blue: 240.0))
        .cornerRadius(14)
        .shadow(radius: 5)
    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
    }
}
