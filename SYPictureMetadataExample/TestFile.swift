//
//  TestFile.swift
//  SYPictureMetadataTests
//
//  Created by Stanislas Chevallier on 24/02/2020.
//  Copyright © 2020 Syan.me. All rights reserved.
//

import Foundation
import SYPictureMetadata

enum TestFile: String, CaseIterable {
    case appleGPS = "TEST_APPLE_GPS.JPG"
    case eightBim = "TEST_8BIM.psd"
    case canon = "TEST_CANON.cr2"
    case ciff = "TEST_CIFF.CRW"
    case dng = "TEST_DNG.dng"
    case gif = "TEST_GIF.gif"
    case iptc = "TEST_IPTC.jpg"
    case iptc2 = "TEST_IPTC_2.jpg"
    case nikon = "TEST_NIKON.nef"
    case pictureStyle = "TEST_PICTURESTYLE.CR2"
    case png = "TEST_PNG.png"
    case unreadable = "TEST_unreadable.txt"
    
    var url: URL! {
        #if EXAMPLE
        return Bundle(for: AppDelegate.self).url(forResource: rawValue, withExtension: nil, subdirectory: "Test images")
        #elseif TEST
        return Bundle(for: SYPictureMetadataTests.self).url(forResource: rawValue, withExtension: nil, subdirectory: "Test images")
        #endif
    }
    
    func readMetadata() throws -> SYMetadata {
        return try SYMetadata(fileURL: url)
    }
}

