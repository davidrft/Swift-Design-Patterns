//
//  PeopleTests.swift
//  DesignPatternsTests
//
//  Created by David Riff on 10/29/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class PeopleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let parent = Person(name: "John")
        let child1 = Person(name: "Chris")
        let child2 = Person(name: "Matt")

        let relationships = Relationships()
        relationships.addParentAndChild(parent: parent, child: child1)
        relationships.addParentAndChild(parent: parent, child: child2)

        let research = Research(relationships)
        let johnsChildren = [child1, child2]
        XCTAssertEqual(research.findAllChildren(of: "John"), johnsChildren)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
