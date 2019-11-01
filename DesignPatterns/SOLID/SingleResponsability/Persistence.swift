//
//  Persistence.swift
//  DesignPatterns
//
//  Created by David Riff on 10/29/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import Cocoa

class Persistence {

    func save(journal: Journal, toFile filename: String, overwrite: Bool = true) {

    }

    func loadJournal(fromFile filename: String) -> Journal {
        return Journal()
    }

}
