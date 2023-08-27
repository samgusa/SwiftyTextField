//
//  File.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import Foundation
import SwiftUI

/// This enum represents TextField types. It's not recommended to subclass or override it.
public enum TextFieldType {
    case normal
    case secure
    case phoneNumber
}

/// This enum represents image location settings. It's not recommended to subclass or override it.
public enum ImageLocation {
    case left
    case right
}

/// This enum represents button types settings. It's not recommended to subclass or override it.
public enum ButtonType {
    case image
    case text
}

/// This enum represents error location settings. It's not recommended to subclass or override it.
public enum ErrorLocation {
    case top
    case bottom
}


// Internal cases:
internal extension ButtonType {
    static var internalImage: ButtonType {
        .image
    }

    static var internalText: ButtonType {
        .text
    }
}

