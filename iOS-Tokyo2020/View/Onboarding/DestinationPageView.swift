//
//  DestinationPageView.swift
//  iOS-Tokyo2020
//
//  Created by João Gabriel Biazus de Quevedo on 30/03/21.
//

import SwiftUI

struct DestinationPageView: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 140, height: 100, alignment: .center)
                .padding(.top, -115)
            
            Text("CHOOSE 1 OR MORE SPORTS YOU LIKE")
                .bold()
                .font(.system(size: 13))
            ScrollView(showsIndicators: false){
                VStack {
                    HStack {
                        CircleImage(image: Image("1"), height: 96, width: 95)
                            .padding(8)
                        CircleImage(image: Image("2"), height: 95, width: 95)
                            .padding(8)
                        CircleImage(image: Image("3"), height: 95, width: 95)
                            .padding(8)
                    }
                    HStack {
                        CircleImage(image: Image("4"), height: 95, width: 95)
                            .padding(8)
                        CircleImage(image: Image("5"), height: 95, width: 95)
                            .padding(8)
                        CircleImage(image: Image("6"), height: 95, width: 95)
                            .padding(8)
                    }
                    HStack {
                        CircleImage(image: Image("7"), height: 95, width: 95)
                            .padding(8)
                        CircleImage(image: Image("8"), height: 95, width: 95)
                            .padding(8)
                        CircleImage(image: Image("9"), height: 95, width: 95)
                            .padding(8)
                    }
                    HStack {
                        CircleImage(image: Image("10"), height: 95, width: 95)
                            .padding(8)
                        CircleImage(image: Image("11"), height: 95, width: 95)
                            .padding(8)
                        CircleImage(image: Image("12"), height: 95, width: 95)
                            .padding(8)
                    }
                    HStack {
                        CircleImage(image: Image("13"), height: 95, width: 95)
                            .padding(8)
                        CircleImage(image: Image("14"), height: 95, width: 95)
                            .padding(8)
                        CircleImage(image: Image("15"), height: 95, width: 95)
                            .padding(8)
                    }
                }
            }
            NavigationLink(destination: Startview()) {
                
                Text("CONFIRM")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .frame(width: 95, height: 39, alignment: .center)
                    .background(Color("Color1"))
                    .cornerRadius(10)
                    .padding(.top, 70)
                    .padding(.bottom, 40)
            }
            .navigationBarTitle("")
            }
        }

    }
    


struct DestinationPageView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationPageView()
    }
}





