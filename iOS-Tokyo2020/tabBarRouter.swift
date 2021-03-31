//
//  tabBarRouter.swift
//  iOS-Tokyo2020
//
//  Created by Hojin Ryu on 30/03/21.
//

import SwiftUI

class TabBarRouter: ObservableObject{
    
    @Published var currentPage: Page = .feed
    
}


enum Page {
    case feed
    case schedule
    case ranking
    case profile
}

