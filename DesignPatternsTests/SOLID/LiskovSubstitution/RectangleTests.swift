//
//  RectangleTests.swift
//  DesignPatternsTests
//
//  Created by David Riff on 10/29/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class RectangleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRectangleArea() {
        let rectangle = Rectangle(width: 3, height: 4)
        assertEqual(area: 12, areaFromShape: rectangle)
    }

    func testSquareArea() {
        let square = Square(side: 4)
        assertEqual(area: 16, areaFromShape: square)
    }

    func assertEqual(area: Int, areaFromShape shape: Shape, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(area, shape.area, "Expected \(area) but got \(shape.area)", file: file, line: line)
    }
}
