//
//  Copyright (c) 2018 PSPDFKit GmbH. All rights reserved.
//
//  The PSPDFKit Sample applications are licensed with a modified BSD license.
//  Please see License for details. This notice may not be removed from
//  this file.
//

import Foundation
@_exported import PSPDFKit //Clang module

// swiftlint:disable:next identifier_name
func NSUnimplemented(_ fn: String = #function, file: StaticString = #file, line: UInt = #line) -> Never {
    fatalError("\(fn) is not yet implemented", file: file, line: line)
}

// swiftlint:disable:next identifier_name
func NSRequiresConcreteImplementation(_ fn: String = #function, file: StaticString = #file, line: UInt = #line) -> Never {
    fatalError("\(fn) must be overriden in subclass implementations", file: file, line: line)
}
