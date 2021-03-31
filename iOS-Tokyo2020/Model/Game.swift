//
//  Game.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import Foundation

protocol Game {
    var sport: Sport { get }
    var date: Date { get }
    var score: [Int] { get set }
    var description: String { get }
    var duration: Int { get }
}

struct TeamGame: Game {
    let team: [Team]
    let sport: Sport
    let date: Date
    let description: String
    var score: [Int]
    var duration: Int
}

struct IndividualGame: Game {
    let athletes: [Athlete]
    let sport: Sport
    let date: Date
    let description: String
    var score: [Int]
    var duration: Int
}
