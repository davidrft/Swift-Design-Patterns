//
//  Square.swift
//  DesignPatterns
//
//  Created by David Riff on 10/29/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import Foundation

class Square: Shape {
    var side: Int

    init(side: Int) {
        self.side = side
    }

    var area: Int {
        return side * side
    }
}
