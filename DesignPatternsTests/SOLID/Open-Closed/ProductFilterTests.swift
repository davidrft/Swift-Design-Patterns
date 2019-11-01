//
//  ProductFilterTests.swift
//  DesignPatterns
//
//  Created by David Riff on 10/29/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import XCTest
@testable import DesignPatterns

class ProductFilterTests: XCTestCase {

    var products: [Product]!

    override func setUp() {
        let apple = Product(name: "Apple", color: .green, size: .small)
        let tree = Product(name: "Tree", color: .green, size: .large)
        let house = Product(name: "House", color: .blue, size: .large)

        products = [apple, tree, house]
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testOneFilter() {
        let productFilter = ProductFilter()
        let spec = ColorSpecification(color: .green)

        let greenProducts = products.filter { $0.color == .green }
        let filteredProducts = productFilter.filter(products, withSpecification: spec)
        XCTAssertEqual(filteredProducts, greenProducts)
    }

    func testAndFilter() {
        let productFilter = ProductFilter()
        let blueAndLargeProducts = products.filter { $0.color == .blue && $0.size == .large }
        let filteredProducts = productFilter.filter(products,
                                                    withSpecification: AndSpecification(
                                                        ColorSpecification(color: .blue),
                                                        SizeSpecification(size: .large)))

        XCTAssertEqual(blueAndLargeProducts, filteredProducts)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
