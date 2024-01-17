//
//  Day1Solver.swift
//  AdventOfCode2023
//
//  Created by Pavel Stepanov on 16.01.24.
//

import Foundation

struct Day1Solver {
    private let input: [String]
    private let spelledDigits = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

    init(input: [String]) {
        self.input = input
    }

    func solvePartOne() -> Int {
        input
            .map { $0.components(separatedBy: .decimalDigits.inverted).joined() }
            .map { "\($0.first!)\($0.last!)" }
            .compactMap(Int.init)
            .reduce(0, +)
    }

    func solvePartTwo() -> Int {
        input.map { string in
            let (firstDigit, lastDigit) = extractFirstAndLastDigits(string: string)
            return firstDigit * 10 + lastDigit
        }
        .reduce(0, +)
    }

    private func extractFirstAndLastDigits(string: String) -> (Int, Int) {
        var (firstDigit, lastDigit): (Int?, Int?) = (nil, nil)
        for index in string.indices {
            if let digit = Int(string[index...index]) {
                firstDigit = firstDigit ?? digit
                lastDigit = digit
                continue
            }
            for (digitIndex, digitWord) in spelledDigits.enumerated() {
                if string[index..<string.endIndex].hasPrefix(digitWord) {
                    firstDigit = firstDigit ?? digitIndex
                    lastDigit = digitIndex
                    continue
                }
            }
        }

        return (firstDigit!, lastDigit!)
    }
}
