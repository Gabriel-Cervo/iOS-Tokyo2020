//
//  Startview.swift
//  iOS-Tokyo2020
//
//  Created by João Gabriel Biazus de Quevedo on 31/03/21.
//

import SwiftUI

struct Startview: View {
    @StateObject var tabBarRouter = TabBarRouter()

    
    var body: some View {
        VStack {
            Image ("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 140, height: 100, alignment: .center)
                .padding(.top, -120)
            
            Image ("sports")
                .resizable()
                .scaledToFit()
                .frame(width: 292, height: 298, alignment:.center)
            
            Text("OLYMPICS 2020")
                .font(.system(size: 24))
                .bold()
                .foregroundColor(Color("Color1"))
                .padding(.top, 70)
            
            Text("The countdown to the Olympics Games has begun, and as the excitement builds here's everything you need to know!")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .frame(width: 300, height: 70, alignment: .center)
                .padding(10)
                .font(.system(size: 15))
            
            NavigationLink(destination: PrincipalView(tabBarRouter: tabBarRouter)) {
                Text("START")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                    .frame(width: 95, height: 39, alignment: .center)
                    .background(Color("Color1"))
                    .cornerRadius(10)
                    .padding(.top, 60)
                    .padding(.bottom, 40)
                
            }
        }
    }
}
struct Startview_Previews: PreviewProvider {
    static var previews: some View {
        Startview()
    }
}

