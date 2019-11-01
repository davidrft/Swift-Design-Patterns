//
//  HTMLBuilder.swift
//  DesignPatterns
//
//  Created by David Riff on 10/31/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import Cocoa

class HTMLBuilder {
    private let rootName: String
    var root = HTMLElement()

    init(rootName: String) {
        self.rootName = rootName
        root.name = rootName
    }

    func addChild(name: String, text: String) -> HTMLBuilder {
        let element = HTMLElement(name: name, text: text)
        root.elements.append(element)
        return self
    }

    func clear() {
        root = HTMLElement(name: rootName, text: "")
    }
}

extension HTMLBuilder: CustomStringConvertible {
    var description: String { root.description }
}
