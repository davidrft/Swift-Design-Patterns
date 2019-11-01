//
//  HTMLElement.swift
//  DesignPatterns
//
//  Created by David Riff on 10/31/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import Cocoa

class HTMLElement {
    var name = ""
    var text = ""
    var elements = [HTMLElement]()
    private let indentSize = 2

    init(){}

    init(name: String, text: String) {
        self.name = name
        self.text = text
    }
}

extension HTMLElement: CustomStringConvertible {
    private func description(_ indent: Int) -> String {
        var result = ""
        let indentation = String(repeating: " ", count: indent)

        result += "\(indentation)<\(name)>\n"

        if !text.isEmpty {
            let subIndentation = String(repeating: " ", count: (indent + indentSize))
            result += "\(subIndentation)\(text)\n"
        }

        for element in elements {
            result += element.description(indent + indentSize)
        }

        result += "\(indentation)</\(name)>\n"
        
        return result
    }

    var description: String {
        return self.description(indentSize)
    }

    
}
