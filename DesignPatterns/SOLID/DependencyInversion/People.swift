//
//  People.swift
//  DesignPatterns
//
//  Created by David Riff on 10/29/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import Foundation

enum Relationship {
    case parent
    case child
    case sibling
}

class Person: Equatable {
    var name = ""

    init(name: String) {
        self.name = name
    }

    static func == (lhs: Person, rhs: Person) -> Bool { lhs.name == rhs.name }
}

protocol RelationshipBrowser {
    func findAllChildren(of name: String) -> [Person]
}

class Relationships: RelationshipBrowser {
    var relations = [(Person, Relationship, Person)]()

    func addParentAndChild(parent: Person, child: Person) {
        relations.append((parent, .parent, child))
        relations.append((child, .child, parent))
    }

    func findAllChildren(of name: String) -> [Person] {
        return relations
            .filter({ person1, relationship, person2 -> Bool in
                return person1.name == name && relationship == .parent
            })
            .map{$2}
    }
}

class Research {
    var browser: RelationshipBrowser

    init (_ browser: RelationshipBrowser) {
        self.browser = browser
    }

    func findAllChildren(of name: String) -> [Person] {
        return browser.findAllChildren(of: name)
    }
}


