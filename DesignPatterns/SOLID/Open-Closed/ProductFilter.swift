//
//  ProductFilter.swift
//  DesignPatterns
//
//  Created by David Riff on 10/29/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import Cocoa

protocol Specification {
    associatedtype T
    func isSatistified(_ item: T) -> Bool
}

protocol Filter {
    associatedtype T
    func filter<Spec: Specification>(_ items: [T], withSpecification spec: Spec) -> [T]
        where Spec.T == T
}

class ColorSpecification: Specification {
    typealias T = Product
    let color: Color

    init(color: Color) {
        self.color = color
    }

    func isSatistified(_ item: Product) -> Bool {
        return item.color == color
    }
}

class SizeSpecification: Specification {
    typealias T = Product
    let size: Size

    init (size: Size) {
        self.size = size
    }

    func isSatistified(_ item: Product) -> Bool {
        return item.size == size
    }
}

class AndSpecification<T,
    SpecA: Specification,
    SpecB: Specification> : Specification
    where SpecA.T == SpecB.T, T == SpecA.T {

    let first: SpecA
    let second: SpecB

    init(_ first: SpecA, _ second: SpecB) {
        self.first = first
        self.second = second
    }

    func isSatistified(_ item: T) -> Bool {
        return first.isSatistified(item) && second.isSatistified(item)
    }
}

class ProductFilter: Filter {
    typealias T = Product

    func filter<Spec: Specification>(_ items: [Product], withSpecification spec: Spec) -> [Product]
        where Spec.T == T {
        return items.filter { spec.isSatistified($0) }
    }
}
