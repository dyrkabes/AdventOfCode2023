//
//  Day1Test.swift
//  AdventOfCode2023Tests
//
//  Created by Pavel Stepanov on 16.01.24.
//

import XCTest
@testable import AdventOfCode2023

final class Day1Test: XCTestCase {
    private var sut: Day1Solver!

    // MARK: - Part One -

    func testSolveSampleOne() {
        // given
        let inputStrings = FileLoader.input(from: "Day1InputSampleOne", bundle: Bundle.current)
        sut = .init(input: inputStrings)
        
        // when
        let result = sut.solvePartOne()

        // then
        XCTAssertEqual(result, 142)
    }

    func testSolveSolutionOne() {
        // given
        let inputStrings = FileLoader.input(from: "Day1Input", bundle: Bundle.main)
        sut = .init(input: inputStrings)

        // when
        let result = sut.solvePartOne()

        // then
        XCTAssertEqual(result, 55108)
    }

    // MARK: - Part Two -

    func testSolveSampleTwoOverlappingDigits() {
        // given
        sut = .init(input: ["eightwo"])

        // when
        let result = sut.solvePartTwo()

        // then
        XCTAssertEqual(result, 82)
    }

    func testSolveSampleTwo() {
        // given
        let inputStrings = FileLoader.input(from: "Day1InputSampleTwo", bundle: Bundle.current)
        sut = .init(input: inputStrings)
        
        // when
        let result = sut.solvePartTwo()

        // then
        XCTAssertEqual(result, 281)
    }

    func testSolveSolutionTwo() {
        // given
        let inputStrings = FileLoader.input(from: "Day1Input", bundle: Bundle.main)
        sut = .init(input: inputStrings)
        
        // when
        let result = sut.solvePartTwo()

        // then
        XCTAssertEqual(result, 56324)
    }
}
