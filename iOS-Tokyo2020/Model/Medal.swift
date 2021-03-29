//
//  Medal.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import Foundation

enum MedalType {
    case gold
    case silver
    case bronze
}

struct Medal {
    let type: MedalType
    let quantity: Int
    let year: Olympic
}
