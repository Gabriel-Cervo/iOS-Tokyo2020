//
//  TabBarIcon.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 31/03/21.
//

import SwiftUI

struct TabBarIcon: View {
    
    @StateObject var tabBarRouter: TabBarRouter
    let assignedPage: Page
    let width, height: CGFloat
    let IconName, tabName: String
    
    var body: some View {
        VStack{
            Image(IconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabName)
                .font(.footnote)
            Spacer()
        }
        .padding(.horizontal, -2)
        .onTapGesture {
            tabBarRouter.currentPage = assignedPage
        }
    }
}
