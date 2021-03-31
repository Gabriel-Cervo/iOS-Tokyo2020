//
//  ContentView.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//




import SwiftUI

struct ContentView: View {
    
    @StateObject var tabBarRouter: TabBarRouter
    
    var body: some View {
        GeometryReader { geometry in
            
            NavigationView {
                VStack {
                    Spacer()
                    switch tabBarRouter.currentPage {
                    case .feed:
                        feedEntireView()
                    case .schedule:
                        Schedule()
                    case .ranking:
                        RankingView()
                    case .profile:
                        Text("Profile")
                    }
                    
                    Spacer()
                    HStack {
                        TabBarIcon(tabBarRouter: tabBarRouter, assignedPage: .feed, width: geometry.size.width/5, height: geometry.size.height/28, IconName: "grid", tabName: "Feed")
                        
                        TabBarIcon(tabBarRouter: tabBarRouter, assignedPage: .schedule,width: geometry.size.width/5, height: geometry.size.height/28, IconName: "calendar", tabName: "Schedule")
                        
                        TabBarIcon(tabBarRouter: tabBarRouter, assignedPage: .ranking,width: geometry.size.width/5, height: geometry.size.height/28, IconName: "award", tabName: "Ranking")
                        
                        TabBarIcon(tabBarRouter: tabBarRouter, assignedPage: .profile,width: geometry.size.width/5, height: geometry.size.height/28, IconName: "user", tabName: "Profile")
                    }
                        .frame(width: geometry.size.width, height: geometry.size.height/8)
                    .background(Color("TabBarBackground"))
                }
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tabBarRouter: TabBarRouter())
    }
}

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

