//
//  File.swift
//  DesignPatterns
//
//  Created by David Riff on 10/29/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import Foundation

protocol Shape {
    var area: Int { get }
}

class Rectangle: Shape {
    var width = 0
    var height = 0

    init(){}

    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }

    var area: Int {
        return width * height
    }
}

extension Rectangle: CustomStringConvertible {
    var description: String {
        return "Rectangle(width: \(width), height: \(height))"
    }
}
