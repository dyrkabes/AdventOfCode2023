//
//  FileLoaderTest.swift
//  AdventOfCode2023Tests
//
//  Created by Pavel Stepanov on 16.01.24.
//

import XCTest
@testable import AdventOfCode2023

final class FileLoaderTest: XCTestCase {
    typealias Sut = FileLoader

    func testLoadsFile() {
        // given && when
        let result = Sut.input(from: "SampleFile", bundle: Bundle.current)

        // then
        let expectedResult = [
            "1abc2",
            "pqr3stu8vwx",
            "a1b2c3d4e5f",
            "treb7uchet"
        ]
        XCTAssertEqual(result, expectedResult)
    }
}
