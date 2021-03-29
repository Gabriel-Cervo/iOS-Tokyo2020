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
                
                VStack {
                    
                    VStack {
                        HStack(spacing: 20) {
                            CustomFont(text: "Featured Athletes", fontSize: 17, fontWeight: .heavy)
                            
                            Spacer()
                            
                            Text("See all")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                AthletePreview()
                                AthletePreview()
                                AthletePreview()
                                AthletePreview()
                                AthletePreview()

                            }
                        }
                    }
                    .padding(.top, 60)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            CustomFont(text: "Next Games", fontSize: 17, fontWeight: .heavy)
                                Spacer()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 25) {
                                AthleteGameView()
                                AthleteGameView()
                                AthleteGameView()
                            }
                            .padding()
                        }
                    }
                    .padding(.top, 40)
                    
                }
                .padding(20)
            }
        }
    }
}

struct SportView_Previews: PreviewProvider {
    static var previews: some View {
        SportView()
    }
}
