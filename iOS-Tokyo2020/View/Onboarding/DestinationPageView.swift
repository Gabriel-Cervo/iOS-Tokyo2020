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
                        VStack {
                            CircleImage(image: Image("1"), height: 96, width: 95)
                                .padding(8)
                            
                            Text("Football")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                        
                        VStack {
                            CircleImage(image: Image("2"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Tennis Woman")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                        
                        VStack {
                            CircleImage(image: Image("3"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Tennis Double")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                    }
                    HStack {
                        VStack {
                            CircleImage(image: Image("4"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Cycling Road")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                        
                        VStack {
                            CircleImage(image: Image("5"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Swimming")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                        
                        VStack {
                            CircleImage(image: Image("6"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Sailling")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                    }
                    HStack {
                        VStack {
                            CircleImage(image: Image("7"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Equestrian")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                        
                        VStack {
                            CircleImage(image: Image("8"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Table Tennis")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                        
                        VStack {
                            CircleImage(image: Image("9"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Canoe Sprint")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                    }
                    HStack {
                        VStack {
                            CircleImage(image: Image("10"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Basketball")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                        
                        VStack {
                            CircleImage(image: Image("11"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Basketball")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                        
                        VStack {
                            CircleImage(image: Image("12"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Boxing")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                    }
                    HStack {
                        VStack {
                            CircleImage(image: Image("13"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Beach Volley")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                        
                        VStack {
                            CircleImage(image: Image("14"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Gymnastic Artistic")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
                        
                        VStack {
                            CircleImage(image: Image("15"), height: 95, width: 95)
                                .padding(8)
                            
                            Text("Tennis Single")
                                .font(.system(size: 13))
                                .padding(.top, -12)
                        }
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
                    .padding(.top, 15)
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





