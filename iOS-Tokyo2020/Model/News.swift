//
//  News.swift
//  iOS-Tokyo2020
//
//  Created by Joao Gabriel Dourado Cervo on 29/03/21.
//

import Foundation
import SwiftUI

protocol News {
    var title: String { get }
    var content: String { get }
    var image: Image { get }
}

struct SportNews: News {
    let title: String
    let imageName: String
    let content: String
    
    var image: Image {
        Image(imageName)
    }
}
