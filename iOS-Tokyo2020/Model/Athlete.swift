//
//  athlete.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import Foundation
import SwiftUI

struct Athlete {
    let name: String
    let imageName: String
    let yearsParticipated: Olympic
    let sport: Sport
    let team: Team
    let modalities: [String]
    let individualMedals: [Medal]
    let games: [Game]
    let news: [SportNews]
    
    var image: Image {
        Image(imageName)
    }
}
