//
//  FileLoader.swift
//  AdventOfCode2023
//
//  Created by Pavel Stepanov on 16.01.24.
//

import Foundation

final class FileLoader {
    static func input(from fileName: String, bundle: Bundle?) -> [String] {
        let bundle = bundle ?? Bundle(for: self)
        guard let data = loadData(from: fileName, bundle: bundle) else {
            fatalError("Input is not available \(fileName)")
        }
        return String(data: data, encoding: .utf8)!.split(whereSeparator: \.isNewline).map(String.init)
    }

    private static func loadData(from fileName: String, bundle: Bundle) -> Data? {
        guard let url = bundle.url(forResource: fileName, withExtension: nil) else {
            return nil
        }

        guard let data = try? Data(contentsOf: url) else {
            return nil
        }

        return data
    }
}
