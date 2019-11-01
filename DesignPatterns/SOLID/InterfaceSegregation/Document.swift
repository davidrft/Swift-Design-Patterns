//
//  Document.swift
//  DesignPatterns
//
//  Created by David Riff on 10/29/19.
//  Copyright © 2019 David Riff. All rights reserved.
//

import Cocoa

//protocol Machine {
//    func print(document: Document)
//    func scan(document: Document)
//    func fax(document: Document)
//}

protocol Printer {
    func print(document: Document)
}

protocol Scanner {
    func scan(document: Document)
}

protocol Fax {
    func fax(document : Document)
}

class OrdinaryPrinter: Printer {
    func print(document: Document) {
        return
    }
}

class Photocopier: Printer, Scanner {
    func print(document: Document) {
        return
    }

    func scan(document: Document) {
        return
    }
}

protocol MultiFunctionDevice: Printer, Scanner {}

class MultiFunctionMachine: MultiFunctionDevice {
    let printer: Printer
    let scanner: Scanner

    init(printer: Printer, scanner: Scanner) {
        self.printer = printer
        self.scanner = scanner
    }

    func print(document: Document) {
        printer.print(document: document)
    }

    func scan(document: Document) {
        scanner.scan(document: document)
    }
}

class Document {

}
