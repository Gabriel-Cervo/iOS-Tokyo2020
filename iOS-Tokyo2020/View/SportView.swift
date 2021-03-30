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
                            CustomFont(text: "Featured Athletes", fontSize: 20, fontWeight: .heavy)
                            
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
                            CustomFont(text: "Next Games", fontSize: 20, fontWeight: .heavy)
                                
                            Spacer()
                        }
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                AthleteGameView()
                                AthleteGameView()
                                AthleteGameView()
                                AthleteGameView()

                            }
                            .padding(2)
                        }
                    }
                    .padding(.top, 30)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            CustomFont(text: "Results", fontSize: 20, fontWeight: .heavy)
                                
                            Spacer()
                        }
                        
                        HStack(spacing: 20) {
                            ResultsView()
                            ResultsView()
                        }
                    }
                    .padding(.top, 15)
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
