//
//  Sport.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import Foundation
import SwiftUI

enum SportType {
    case individual
    case teamBased
}

struct Sport {
    let color: Color
    let name: String
    let iconName: String
    let gamesSchedule: [Game]
    let modalities: [String]
    let sportType: SportType
    let sliderImages: [Image]
    let athletes: [Athlete]
    let teams: [Team]
    
    var icon: Image {
        Image(iconName)
    }
}



