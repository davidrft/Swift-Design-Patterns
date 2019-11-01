//
//  HTMLElementTests.swift
//  DesignPatternsTests
//
//  Created by David Riff on 10/31/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class HTMLElementTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let builder = HTMLBuilder(rootName: "ul")
        _ = builder.addChild(name: "li", text: "hello")
            .addChild(name: "li", text: "world")

        let reference = """
                          <ul>
                            <li>
                              hello
                            </li>
                            <li>
                              world
                            </li>
                          </ul>

                        """

        XCTAssertEqual(builder.description, reference)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
