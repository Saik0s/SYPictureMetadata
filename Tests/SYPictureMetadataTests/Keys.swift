//
//  Keys.swift
//  SYPictureMetadataExample
//
//  Created by Stanislas Chevallier on 02/02/2021.
//  Copyright © 2021 Syan.me. All rights reserved.
//

import Foundation

public enum Keys: String, CaseIterable {
    case imageIO = "ImageIO.txt"
    case supported = "Supported.txt"
    case unsupported = "Unsupported.txt"
    
    var url: URL! {
        return Bundle.module.url(forResource: rawValue, withExtension: nil)
    }
    
    func read() -> [String] {
        try! String(contentsOf: url).components(separatedBy: "\n")
    }
}

