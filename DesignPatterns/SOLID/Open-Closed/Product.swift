//
//  Product.swift
//  DesignPatterns
//
//  Created by David Riff on 10/29/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import Cocoa

enum Color {
    case red
    case green
    case blue
}

enum Size {
    case small
    case medium
    case large
    case huge
}

class Product {
    var name: String
    var color: Color
    var size: Size

    init(name: String, color: Color, size: Size) {
        self.name = name
        self.color = color
        self.size = size
    }
}

extension Product: Equatable {
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.name == rhs.name && lhs.color == rhs.color && lhs.size == rhs.size
    }
}
