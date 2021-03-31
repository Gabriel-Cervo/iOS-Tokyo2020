//
//  Team.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import Foundation
import SwiftUI

struct Team {
    let name: String
    let iconName: String
    let medals: [Medal]
    let athletes: [Athlete]
    var games: [Game]
    
    var icon: Image {
        Image(iconName)
    }
}
